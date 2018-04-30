within Buildings.ThermalZones.Detailed.UsersGuide;
class CFD
  "Room model with air heat and mass balance computed using Computational Fluid Dynamics"
  extends Modelica.Icons.Information;
annotation (preferredView="info",
Documentation(info="<html>
<p>
The model <a href=\"modelica://Buildings.ThermalZones.Detailed.CFD\">
Buildings.ThermalZones.Detailed.CFD</a> is
a room model in which the room air heat and mass balance is computed
using the Computational Fluid Dynamics (CFD).
</p>
<p>
The model is identical with
<a href=\"modelica://Buildings.ThermalZones.Detailed.MixedAir\">
Buildings.ThermalZones.Detailed.MixedAir</a>, except
for the following points:
</p>
<ul>
<li>
The heat and mass balance of the air is computed using CFD.
</li>
<li>
To match surfaces and fluid ports between the Modelica model and the CFD model,
users must declare a unique name for each surface and for each fluid port.
The same names must be used in the CFD input file.
</li>
<li>
To get access to properties of the control volumes in the CFD simulation,
this model allows declaring a sensor using the parameter
<code>sensorName</code>.
This parameter is an array of strings. The same strings must be used
in the CFD input file when declaring the sensor in order to send the
CFD results to the output signal of Modelica.
</li>
<li>
To link the fluid ports in Modelica to the boundary conditions of CFD,
this model requires declaring names for the fluid ports
<code>ports</code> using the parameter
<code>portName</code>.
This parameter is an array of strings. The same strings must be used
in the CFD input file when declaring the inlet and outlet boundary conditions.
</li>
<li>
The control signal of window shades is a constant rather than an input.
Its value cannot be changed during the simulation as the FFD implemementation
does not support moving areas for the boundary conditions.
</li>
<li>
The initial conditions for temperature, mass fraction and trace substances
are declared in the CFD input file rather than in Modelica.
In Modelica, an initial value for the pressure can be defined. This is used
for a pressure balance of the room volume, and is implemented in
<a href=\"modelica://Buildings.ThermalZones.Detailed.BaseClasses.CFDFluidInterface\">
Buildings.ThermalZones.Detailed.BaseClasses.CFDFluidInterface</a>.
However, the FFD implementation uses
a constant pressure during the whole simulation and does not use the pressure
of the Modelica model.
</li>
</ul>
A description of the model assumptions and the implemention and validation of
this room model can be found in <a href=\"#ZuoEtAl2016\">Zuo et al. (2016)</a>
and in <a href=\"#ZuoEtAl2014\">Zuo et al. (2014)</a>.
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<h4>Conventions</h4>
<p>
The following conventions are made:
</p>
<ul>
<li>
<p>
The port <code>heaPorAir</code> contains the average room air temperature, defined as
</p>
<p align=\"center\" style=\"font-style:italic;\">
  T<sub>a</sub> = 1 &frasl; V &nbsp; &int;<sub>V</sub> T(dV) &nbsp; dV,
</p>
<p>
where <i>T<sub>a</sub></i> is the average room air temperature, <i>V</i> is the room air volume
and <i>T(dV)</i> is the room air temperature in the control volume <i>dV</i>.
The average room air temperature <i>T<sub>a</sub></i> is computed by the CFD program.
</p>
</li>
<li>
If a model injects heat to <code>heaPorAir</code>, then the heat will be distributed to all
cells. The amount of heat flow rate that each cell exchanges with <code>heaPorAir</code> is
proportional to its volume.
</li>
<li>
The flow resistance of the diffusor or exhaust grill must be computed in the
Modelica HVAC system that is connected to the room model, because the CFD
program assumes the same total pressure at all fluid ports.
</li>
</ul>
<p>
The quantities that are exchanged between the programs are defined as follows:
</p>
<ul>
<li>
For the mass flow rate of the fluid port,
we exchange <i>m<sub>e</sub> = 1 &frasl; &Delta; t &int;<sub>&Delta; t</sub> m(s) dt</i>.
</li>
<li>
For the temperature, species concentration and trace substances of the fluid port, we exchange
<i>X = 1 &frasl; (m<sub>e</sub> &nbsp; &Delta; t) &int;<sub>&Delta; t</sub> m(s) &nbsp; X(s) dt</i>.
Note that for the first implementation, CFD does only compute a bulk mass balance for <code>Xi</code>.
It does not do a moisture balance for each cell.
However, for trace substances <code>C</code>, CFD does a contaminant balance for each cell
and return <code>C_outflow</code> to be the contaminant concentration of that cell.
</li>
<li>
For the surface temperatures,
we exchange <i>T<sub>e</sub> = 1 &frasl; &Delta; t &int;<sub>&Delta; t</sub> T(s) dt</i>.
</li>
<li>
For the surface heat flow rates,
we exchange <i>Q<sub>e</sub> = 1 &frasl; &Delta; t &int;<sub>&Delta; t</sub> Q(s) dt</i>.
</li>
</ul>
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<h4>Implementation</h4>
<p>
This section explains how the data exchange between Modelica and CFD is
implemented.
The section is only of interest to developers. Users may skip this section.
</p>
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<h5>Interface to Modelica models</h5>
<p>
Interfacing CFD with the Modelica room air heat and mass balance is done
in the model
<a href=\"modelica://Buildings.ThermalZones.Detailed.BaseClasses.CFDAirHeatMassBalance\">
Buildings.ThermalZones.Detailed.BaseClasses.CFDAirHeatMassBalance</a>.
To interface variables from Modelica and CFD, the following classes and
conventions are used in this model.
</p>
<ul>
<li>
If a construction is not present, or if no shade is present, or
if no air stream is connected to <code>ports</code>,
then no variables are exchanged for this quantity with the block <code>cfd</code>.
</li>
<li>
For surfaces, heat flow rates in <i>[W]</i> and temperatures
in <i>[K]</i> are exchanged.
These variables are connected to the surface heat ports
through instances of the model
<a href=\"modelica://Buildings.ThermalZones.Detailed.BaseClasses.CFDSurfaceInterface\">
Buildings.ThermalZones.Detailed.BaseClasses.CFDSurfaceInterface</a>.
This model has four ports.
Depepending on the parameter
<code>bouCon</code>, two of these ports are conditionally removed.
This allows to use the parameter <code>bouCon</code> to specify whether
the surface should be used with a temperature or a heat flow rate
boundary condition.
Therefore, the inputs and outputs to the instance <code>cfd</code>
are either temperatures or heat flow rates.
The parameter <code>surIde</code> of this model, which is also
propagated to the instance <code>cfd</code>, declares what
type of boundary condition is used.
</li>
<li>
The variables of the connector <code>ports</code> are exchanged with the CFD block
through the instance <code>intFlu</code>.
This interface is implemented in
<a href=\"modelica://Buildings.ThermalZones.Detailed.BaseClasses.CFDFluidInterface\">
Buildings.ThermalZones.Detailed.BaseClasses.CFDFluidInterface</a>.
Its output and input signals are connected to the <code>cfd</code> block as follows:
<ul>
<li>
Input to the <code>cfd</code> block is a vector
<code>[p, m_flow[nPorts], T_inflow[nPorts], X_inflow[nPorts*Medium.nXi],
C_inflow[nPorts*Medium.nC]]</code>.
The quantity <code>p</code> is the total pressure of the fluid ports (all fluid ports have the same
total pressure).
Therefore, the flow resistance of the diffusor or exhaust grill must be computed in the
Modelica HVAC system that is connected to the room model.
The quantities <code>X_inflow</code> and <code>C_inflow</code> (or <code>X_inflow</code> and <code>C_inflow</code>)
are vectors with components <code>X_inflow[1:Medium.nXi]</code> and <code>C_inflow[1:Medium.nC]</code>.
For example, for moist air, <code>X_inflow</code> has one element which is equal to the mass fraction of air,
relative to the total air mass and not the dry air.
</li>
<li>
Output from the CFD block is a vector
<code>[T_outflow[nPorts], X_outflow[nPorts*Medium.nXi], C_outflow[nPorts*Medium.nC]]</code>.
The quantities <code>*_outflow</code> are the fluid properties of the cell to which the port is
connected.
</li>
<li>
If <code>Medium.nXi=0</code> (e.g., for dry air) or <code>Medium.nC=0</code>,
then these signals are not present as input/output signals of the CFD block.
</li>
</ul>
</ul>
<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<h5>Data exchange with CFD</h5>
<p>
The data exchange with the CFD interface is done through the instance
<code>cfd</code>, and implemented in
<a href=\"modelica://Buildings.ThermalZones.Detailed.BaseClasses.CFDExchange\">
Buildings.ThermalZones.Detailed.BaseClasses.CFDExchange</a>.
This block exchanges the following data with the CFD simulation:
</p>
<p>
During the initialzation, the following data are sent from Modelica to CFD:
</p>
<ul>
<li>
An array of strings where each element is the name of the surface,
as declared by
the user when instantiating the model
<a href=\"Buildings.ThermalZones.Detailed.CFD\">Buildings.ThermalZones.Detailed.CFD</a>.
Let us call this array <code>name</code>.
The orders of elements in this array are as follows:
<ol>
<li>
The first
<code>nConExt</code> elements are the names of the exterior constructions
declared as <code>datConExt</code>. The order is the same as
in the declaration of <code>datConExt</code>.
</li>
<li>
<code>nConExtWin</code> elements are the names of the exterior constructions
declared as <code>datConExtWin</code>. These constructions embed windows
and a frame. Therefore, what follows are
<code>nConExtWin</code> elements where each string is the same as above,
but <code>' (glass, unshaded)'</code> has been appended,
then -- if and only if the window has a shade --
<code>nConExtWin</code> elements follow with
<code>' (glass, shaded)'</code> appended, and,
finally,
<code>nConExtWin</code> elements follow with <code>' (frame)'</code> appended.
</li>
<li>
<code>nConPar</code> elements for the surface <code>a</code> of <code>datConPar</code>.
To these names, the string <code>' (surface a)'</code> is appended.
Next, there are <code>nConPar</code> elements with  <code>' (surface b)'</code> appended.
</li>
<li>
<code>nConBou</code> elements for the surfaces of <code>datConBou</code>.
</li>
<li>
<code>nSurBou</code> elements for the surfaces of <code>nSurBou</code>.
</li>
</ol>
</li>
<li>
Using the same order, there is also an array for the areas of the surfaces <code>A</code>,
an array for the surface tilt <code>til</code>
and the type of the boundary conditions <code>bouCon</code> for each of these surfaces.
If <code>bouCon[i] = 1</code>,
then temperature is sent from Modelica to CFD.
If <code>bouCon[i] = 2</code>, then
heat flow rate is sent from Modelica to CFD.
</li>
<li>
There is an array <code>sensorName</code> that contains the names of all sensors,
in the same order as they are declared when instantiating the model
<a href=\"modelica://Buildings.ThermalZones.Detailed.CFD\">
Buildings.ThermalZones.Detailed.CFD</a>.
If no sensors are declared in Modelica, then this array will have zero elements.
How many sensor are declared in Modelica can be checked through the variable <code>nSen</code>,
which is sent from Modelica to CFD.
</li>
<li>
There is also an array <code>AirProperty</code> that contains the properties of the air.
The orders of elements in this array are as follows:
<ol>
<li>
The density of air at the initial state (CFD will accept it only when there is a mass exchange between the two programs).
</li>
</ol>
</li>
</ul>
<p>
During the time integration, and array <code>u</code> is sent from Modelica to CFD, and Modelica
receives an array <code>y</code> from CFD.
The elements of the array <code>u</code> are as follows:
</p>
<ol>
<li>
Either temperature or heat flow rate boundary conditions,
in the same order as the array <code>name</code>. The units are <i>[K]</i> or <i>[W]</i>.
The array <code>bouCon</code> that is sent during the
initialization declares the type of boundary
condition.
There are <code>nSur</code> elements for surfaces.
</li>
<li>
If at least one window in the room has a shade, then the next
<code>nConExtWin</code>
elements are the shading control signals. <code>u=0</code> means
that the shade is not deployed,
and <code>u=1</code> means that the shade is
completely deployed (blocking solar radiation).
If there is no window in the room, then these elements are not present.
</li>
<li>
If at least one window in the room has a shade, then the next <code>nConExtWin</code>
elements are the radiations in <i>[W]</i> that are absorbed by the
respective shades.
If there is no window in the room, then these elements are not present.
</li>
<li>
The convective sensible heat input into the room in <i>[W]</i>, which is a scalar.
A positive value means that heat is added to the room.
</li>
<li>
The latent heat input into the room in <i>[W]</i>, which is a scalar.
A positive value means that moisture is added to the room.
</li>
<li>
The next element is the room average static pressure in <i>[Pa]</i>.
</li>
<li>
The next <code>nPorts</code> elements are the mass flow rates
into the room in <i>[kg/s]</i>.
A positive value is used if the air flows into the room,
otherwise the value is negative.
The first element is connected to <code>ports[1]</code>, the second to
<code>ports[2]</code> etc.
</li>
<li>
The next <code>nPorts</code> elements are the air temperatures
that the medium has
<i>if it were flowing into the room</i>, e.g., the \"inflowing medium\"
computed based on <code>inStream(h_outflow)</code>.
</li>
<li>
The next <code>nPorts*Medium.nXi</code> elements are the
species concentration of the inflowing
medium.
The first <code>Medium.nXi</code> elements are for port <i>1</i>, then for
port <i>2</i> etc.
The units are in <i>[kg/kg]</i> total mass, and not in  <i>[kg/kg]</i> dry air.
</li>
<li>
The next <code>nPorts*Medium.nC</code> elements are the trace substances
of the inflowing
medium.
The first <code>Medium.nC</code> elements are for port <i>1</i>, then for
port <i>2</i> etc.
</li>
</ol>
The elements of the array <code>y</code> that is sent from CFD to Modelica are as follows:
<ol>
<li>
Either temperature or heat flow rate at the surfaces,
in the same order as the array <code>name</code>.
The array <code>bouCon</code> that is sent during the
initialization declares the type of boundary
condition.
If <code>bouCon[i] = 1</code>, then heat flow rate in <i>[W]</i>
is sent from CFD to Modelica.
If <code>bouCon[i] = 2</code>, then temperature in <i>[K]</i>
is sent from CFD to Modelica.
There are <code>nSur</code> elements for surfaces.
</li>
<li>
The average room air temperature in <i>[K]</i>.
</li>
<li>
If the room has at least one window with a shade, then the next
<code>nConExtWin</code> elements are the temperature of the
shade in <i>[K]</i>.
</li>
<li>
The next <code>nPorts</code> elements are the air temperatures
in <i>[K]</i>
of the cells that are connected to the inlet or outlet diffusor
of <code>ports[1], ports[2], etc.</code>.
</li>
<li>
The next <code>nPorts*Medium.nXi</code> elements are the
species concentration of the cells to which the ports are
connected.
The first <code>Medium.nXi</code> elements are for port <i>1</i>, then for
port <i>2</i> etc.
The units are in <i>[kg/kg]</i> total mass, and not in <i>[kg/kg]</i> dry air.
</li>
<li>
The next <code>nPorts*Medium.nC</code> elements are the trace substances
of the cells to which the ports are connected to.
The first <code>Medium.nC</code> elements are for port <i>1</i>, then for
port <i>2</i> etc.
</li>
</ol>
<h4>References</h4>
<p>
<a name=\"ZuoEtAl2016\"/>
Wangda Zuo, Michael Wetter, Wei Tian, Dan Li, Mingang Jin, Qingyan Chen.<br/>
<a href=\"modelica://Buildings/Resources/Images/ThermalZones/Detailed/Examples/FFD/Zuo2016.pdf\">
Coupling Indoor Airflow, HVAC, Control and Building Envelope Heat Transfer in the Modelica Buildings Library.
</a>
<br/>
Journal of Building Performance Simulation, 9(4), pp. 366-381, 2016.<br/>
<a href=\"http://dx.doi.org/10.1080/19401493.2015.1062557\">
http://dx.doi.org/10.1080/19401493.2015.1062557</a>.
</p>
<p>
<a name=\"ZuoEtAl2014\"/>
Wangda Zuo, Michael Wetter, Dan Li, Mingang Jin, Wei Tian, Qingyan Chen.<br/>
<a href=\"modelica://Buildings/Resources/Images/ThermalZones/Detailed/Examples/FFD/ZuoEtAl2014.pdf\">
Coupled Simulation of Indoor Environment, HVAC and Control System by Using Fast Fluid Dynamics and the Modelica Buildings Library. </a><br/>
Proc. of the 2014 ASHRAE/IBPSA-USA Building Simulation Conference, Atlanta, GA, September 10-12, 2014.
</p>
</html>"));
end CFD;
