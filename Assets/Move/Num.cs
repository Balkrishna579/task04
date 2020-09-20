using System.Collections;
using System.Text;
using SimpleJSON;
using UnityEngine;

/* 
 * @brief ROSBridgeLib
 * @author Michael Jenkin, Robert Codd-Downey, Andrew Speers and Miquel Massot Campos
 */

namespace ROSBridgeLib {
	namespace  Move{
            public class Num : ROSBridgeMsg {
                   public double num2;
                   public double num;
           public Num(JSONNode msg) {
				num2 = double.Parse(msg["num2"]);
				num = double.Parse(msg["num"]);
				
			}
			
			public Num(double num2, double num) {
				num2=num2;
                                num=num;
			}
           public static string GetMessageType() {
				return "move/Num";
			}
			
			public double Getnum2() {
				return num2;
			}
			
			public double Getnum() {
				return num;
			}
	public override string ToString() {
				return "Num [num2=" + num2 + ",  num="+ num +  "]";
			}
			
			public override string ToYAMLString() {
				return "{\"num2\" : " + num2 + ", \"num\" : " + num +   "}";
			}
}}}
           





