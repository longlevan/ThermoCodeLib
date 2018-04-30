within Buildings.UsersGuide.ReleaseNotes;
class Version_5_0_2 "Version 5.0.2"
  extends Modelica.Icons.ReleaseNotes;
    annotation (Documentation(info="<html>
   <div class=\"release-summary\">
   <p>
   Version 5.0.2 is ... xxx
   </p>
   <p>
   This version updates the license to a 3-clause BSD license.
   </p>
   </div>
   <!-- New libraries -->
   <p>
   The following <b style=\"color:blue\">new libraries</b> have been added:
   </p>
   <table class=\"releaseTable\" summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2>
   <tr><td valign=\"top\">xxx
       </td>
       <td valign=\"top\">xxx.
       </td>
       </tr>
   </table>
   <!-- New components for existing libraries -->
   <p>
   The following <b style=\"color:blue\">new components</b> have been added
   to <b style=\"color:blue\">existing</b> libraries:
   </p>
   <table class=\"releaseTable\" summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
   <tr><td colspan=\"2\"><b>Buildings.Fluid</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Fluid.Actuators.Valves.TwoWayPolynomial
       </td>
       <td valign=\"top\">Two-way valve with opening characteristics
                          specified by a polynomial.
                          This model may be used if a valve characteristics needs to be
                          matched to measured data.
       </td>
       </tr>
   <tr><td valign=\"top\">Buildings.Fluid.FixedResistances.PlugFlowPipe
       </td>
       <td valign=\"top\">Pipe with heat loss and transport of the fluid
                          using a plug flow model. This model is applicable for
                          simulation of long pipes such as in district heating and cooling systems.
       </td>
       </tr>
   </table>
   <!-- Backward compatible changes -->
   <p>
   The following <b style=\"color:blue\">existing components</b>
   have been <b style=\"color:blue\">improved</b> in a
   <b style=\"color:blue\">backward compatible</b> way:
   </p>
   <table class=\"releaseTable\" summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
   <tr><td colspan=\"2\"><b>Buildings.Applications.DataCenters</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Applications.DataCenters.ChillerCooled.Equipment.BaseClasses.PartialParallelElectricEIR
       </td>
       <td valign=\"top\">Added <code>constrainedby</code> to declaration of chiller.<br/>
                          This is for
                          <a href=\"modelica://https://github.com/lbl-srg/modelica-buildings/issues/1118\">issue 1118</a>.
       </td>
   </tr>
   <tr><td colspan=\"2\"><b>Buildings.Controls.OBC.ASHRAE.G36_PR1</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Controls.OBC.ASHRAE.G36_PR1.AHUs.SingleZone.SetPoints.VAVSupply
   </td>
       <td valign=\"top\">Revised implementation of fan speed control signal calculation
                          to remove the hysteresis blocks.<br/>
                          This is for
                          <a href=\"https://github.com/lbl-srg/modelica-buildings/issues/1153\">issue 1153</a>.
       </td>
   </tr>
   <tr><td colspan=\"2\"><b>Buildings.Controls.OBC.CDL</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Controls.OBC.CDL.Continuous.Line
   </td>
   <td valign=\"top\">Improved documentation and icon, and added a warning if the limits are used and x1 &gt; x2.
       </td>
   </tr>
   <tr><td colspan=\"2\"><b>Buildings.Fluid.SolarCollectors</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Fluid.SolarCollectors.ASHRAE93<br/>
                          Buildings.Fluid.SolarCollectors.EN12975
       </td>
       <td valign=\"top\">Improved calculation of heat loss.<br/>
                          This is for
                          <a href=\"modelica://https://github.com/lbl-srg/modelica-buildings/issues/1100\">issue 1100</a>.
       </td>
   </tr>
   <tr><td colspan=\"2\"><b>Buildings.Fluid.Sources</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Fluid.Sources.Boundary_pT<br/>
                          Buildings.Fluid.Sources.Boundary_ph<br/>
                          Buildings.Fluid.Sources.FixedBoundary<br/>
                          Buildings.Fluid.Sources.MassFlowSource_T<br/>
                          Buildings.Fluid.Sources.MassFlowSource_h
       </td>
       <td valign=\"top\">Refactored models to allow using <code>Xi</code> rather
                          than <code>X</code> as an input.<br/>
                          By default, the check on the medium base properties is now removed
                          to reduce translation and simulation time.<br/>
                          This is for
                          <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/882\">IBPSA, issue 882</a>.
       </td>
   </tr>
   <tr><td colspan=\"2\"><b>Buildings.Utilities.IO</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Utilities.IO.Python27
       </td>
       <td valign=\"top\">Added option for a Python object
                        to be passed from one Python function invocation to the next.
                        This allows to build up a Python data structure (or to instantiate a Python object),
                        and do computations on this object at each function invocation. For example,
                        a Model Predictive Control algorithm or a machine learning algorithm,
                        implemented in Python, could be fed with data at each time step.
                        It could then store this data
                        and use the current and its historical data to feed its algorithm.
                        Based on this algorithm, it could output a control signal for use in another Modelica model.
                        <br/>
                        The function <code>Buildings.Utilities.IO.Python27.Functions.exchange</code> now takes
                        two additional arguments: A class that contains a pointer to the Python interpreter
                        (for efficiency, as this avoids initializing Python at each call), and
                        a flag that determines whether the Python function returns an object and receives this
                        object at the next invocation. See
                        <code>Buildings.Utilities.IO.Python27.UsersGuide</code> and
                        <code>Buildings.Utilities.IO.Python27.Real_Real</code> for how to use
                        these two arguments.
                        <br/>
                        Models that use <code>Buildings.Utilities.IO.Python27.Real_Real</code>
                        will still work as before. The change only affects the low-level function
                        <code>Buildings.Utilities.IO.Python27.Functions.exchange</code>.
       </td>
  </tr>
  <tr><td valign=\"top\">Buildings.Utilities.IO.Python27</td>
     <td valign=\"top\">
                      Corrected <code>LibraryDirectory</code> annotation.<br/>
                     This is for
                     <a href=\"https://github.com/lbl-srg/modelica-buildings/issues/1160\">issue 1160</a>.
     </td>
   </tr>
   </table>
   <!-- Non-backward compatible changes to existing components -->
   <p>
   The following <b style=\"color:blue\">existing components</b>
   have been <b style=\"color:blue\">improved</b> in a
   <b style=\"color:blue\">non-backward compatible</b> way:
   </p>
   <table class=\"releaseTable\" summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
    <tr><td colspan=\"2\"><b>xxx</b>
       </td>
   </tr>
   <tr><td valign=\"top\">xxx
       </td>
       <td valign=\"top\">xxx.
       </td>
   </tr>
   </table>
   <!-- Errors that have been fixed -->
   <p>
   The following <b style=\"color:red\">critical errors</b> have been fixed (i.e., errors
   that can lead to wrong simulation results):
   </p>
   <table class=\"releaseTable\" summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
   <tr><td colspan=\"2\"><b>Buildings.Fluid.Interfaces</b>
       </td>
   </tr>
   <tr><td valign=\"top\">Buildings.Fluid.Interfaces.PrescribedOutlet
       </td>
       <td valign=\"top\">Corrected error that caused the old model do not track <code>TSet</code> and <code>X_wSet</code>
                          simultaneously.<br/>
                          This is for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/893\">IBPSA, issue 893</a>.
       </td>
   </tr>
   </table>
   <!-- Uncritical errors -->
   <p>
   The following <b style=\"color:red\">uncritical errors</b> have been fixed (i.e., errors
   that do <b style=\"color:red\">not</b> lead to wrong simulation results, e.g.,
   units are wrong or errors in documentation):
   </p>
   <table class=\"releaseTable\" summary=\"summary\" border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
   <tr><td colspan=\"2\"><b>xxx</b>
       </td>
   </tr>
   <tr><td valign=\"top\">xxx
       </td>
       <td valign=\"top\">xxx.
       </td>
   </tr>
   </table>
   <p>
   Note:
   </p>
   <ul>
   <li>
   xxx
   </li>
   </ul>
   </html>"));
end Version_5_0_2;
