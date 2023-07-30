within ;
package Design "Design (empty version)"

  package Experimentation
    package RandomNumber
      package Functions
        function random
          output Real y;
        external "C" y = myrand() annotation (
          Include = "
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double myrand () {
  time_t t;
  /* init */
  srand((unsigned) time(&t));
  return (double)rand()/(double)RAND_MAX;
}
");
        end random;

      end Functions;
    end RandomNumber;
  end Experimentation;
  


  annotation(version="0.0.0",
             conversion(
               noneFromVersion="1.0.0",
               noneFromVersion="1.0.1",
               noneFromVersion="1.0.2",
               noneFromVersion="1.0.3",
               noneFromVersion="1.0.4",
               noneFromVersion="1.0.5",
               noneFromVersion="1.0.6",
               noneFromVersion="1.0.7"
             ),
             __OpenModelica_messageOnLoad="This is an open source dummy package of a commercial library. If you want it to be supported, you will need to add an implemention on our github repository: https://github.com/Modelica-OpenVendorSpecificLibraries.",
             Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
                  graphics={Polygon(points={{-100,-100},{0,80},{100,-100},{-100,-100}}, lineColor={255,0,0}, lineThickness=0.5)})
  );
end Design;
