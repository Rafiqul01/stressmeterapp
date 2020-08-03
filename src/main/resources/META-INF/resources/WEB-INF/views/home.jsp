
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Welcome</title>
    <script>
        $(document).ready(function () {

        });

        function Calculate() {
            var n = parseInt($("#sex").val());
            n += parseInt($("#age").val());
            n += parseInt($("#income").val());
            n += parseInt($("#members").val());
            n += parseInt($("#stress_may_treat_disorder").val());
            n += parseInt($("#stress_impact_on_depression").val());
            n += parseInt($("#stress_impact_on_health").val());
            n += parseInt($("#stress_impact_on_anxiety").val());
            n += parseInt($("#event_thatcase_stress").val());
            n += parseInt($("#broken_relationship").val());
            n += parseInt($("#family_responsibilty").val());
            n += parseInt($("#loss_of_job").val());
            n += parseInt($("#economic_condition").val());
            n += parseInt($("#death_of_nearest").val());
            n += parseInt($("#injury").val());
            //alert(n);
            var sname = "";
            sname += $("#name").val();
            if (sname == "") alert("Enter your name.");
            else {

                var str = "HELLO " + sname + ", YOU ARE IN ";

                if (n <= 20)
                    str += "LOW RISK.";
                else if (n <= 26)
                    str += "INTERMEDIATE RISK. ";
                else if (n <= 32)
                    str += "HIGH LEVEL RISK. ";
                else
                    str += "VERY HIGH LEVEL RISK. ";

                str += "YOUR SCORE IS " + n + ".";

                $("#out").html(str);
            }


        }
        function Clear() {
            location.reload();
        }
        function Check() {
            var score = $("#score").val();
            var disease_str = "";
            var advice_str = "";
            if (score <= 20) {
                disease_str += "Sudden death, Depression.";
                advice_str += "Good working environment.";
            }
            else if (score <= 26) {
                disease_str += "Heart diseases, Diabetes, Sudden death, Depression.";
                advice_str += "Physical exercise, Family bonding, Good working environment.";
            }
            else if (score <= 32) {
                disease_str += "Heart diseases, Diabetes, Schizophrenia, Multiple sclerosis, Sudden death, Depression, Obesity.";
                advice_str += "Yoga, Physical exercise, Family bonding, Good working environment.";
            }
            else {
                disease_str += "Heart diseases, Diabetes, Schizophrenia, Multiple sclerosis, Sudden death, Depression, Obesity, Alzheimer’s diseases.";
                advice_str += "Yoga, Physical exercise, Family bonding, Recreation, Good working environment, Reading book.";
            }
            $("#diseases").show();
            $("#advice").show();
            $("#symptom").show();
            $("#sym").show();
            $("#dis").show();
            $("#adv").show();
            $("#dis").html(disease_str);
            $("#adv").html(advice_str);
        }

    </script>
</head>

<body>
<div class="container-fuild" style="background-color: green;">
    <div class="row">
        <div class="col-12">
            <h1 align="middle">
                <font color="Black"><u>Let's Check Your Stress</u></font>
            </h1>
        </div>
    </div>
</div>

<div class="container-fuild">
    <div class="row">
        <div class="col-4" style="margin-top: 0.2%; margin-left: 2%;">
            <label for="name" style="color: black;"><b>Name: </b></label><br>
            <label for="sex" style="color: black;"><b>Sex: </b></label><br>
            <label for="age" style="color: black;"><b>Age: </b></label><br>
            <label for="income" style="color: black;"><b>Family Income(Monthly): </b></label><br>
            <label for="member" style="color: black; "><b>Family members: </b></label><br>
            <label for="stress_treat_disorder" style="color: black;"><b>Do you think that stress may treat disorder?:
            </b></label><br>
            <label for="s_i_d" style="color: black;"><b>Stress has an impact on depression/ schizophrenia?: </b></label><br>
            <label for="s_i_h" style="color: black;"><b>Stress may have any impact on your health?: </b></label>
            <label for="s_i_a" style="color: black;"><b>Stress has any impact on anxiety of you?: </b></label><br>
            <label for="e_c_s" style="color: black;"><b>Do you have any event that causes stress?: </b></label><br>
            <label for="b_r" style="color: black;"><b>Any broken relationship in your life?: </b></label><br>
            <label for="f_r" style="color: black;"><b>Do you have Family responsibilities?: </b></label>
            <label for="j_l" style="color: black; "><b>Loss of job recently?: </b></label><br>
            <label for="e_c_b" style="color: black;"><b>Your current economic condition is bad?: </b></label><br>
            <label for="d_n" style="color: black;"><b>Recently death of your nearest anyone?: </b></label><br>
            <label for="s_i_r" style="color: black;"><b>Do you have serious injuries recently?: </b></label>
        </div>
        <div class="col-2">
            <input type="text" id="name" placeholder="Enter your name" style="margin-top: 2%;">
            <br>
            <select id="sex" style="margin-top: 3%;">
                <option value="2">Male</option>
                <option value="1">Female</option>
            </select>
            <br>
            <select id="age" style="margin-top: 3%;">
                <option value="1">less than 25</option>
                <option value="4">25-40</option>
                <option value="3">40-65</option>
                <option value="2">more than 65</option>
            </select>
            <br>
            <select id="income" style="margin-top: 4%;">
                <option value="4">5000-10000</option>
                <option value="3">11000-15000</option>
                <option value="2">16000-20000</option>
                <option value="1">21000 and above</option>
            </select>
            <br>
            <select id="members" style="margin-top: 4%;">
                <option value="1">1-4</option>
                <option value="2">5-6</option>
                <option value="3">7-8</option>
                <option value="4">more than 8</option>
            </select>
            <br>
            <select id="stress_may_treat_disorder" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="stress_impact_on_depression" style="margin-top: 4%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="stress_impact_on_health" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="stress_impact_on_anxiety" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="event_thatcase_stress" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="broken_relationship" style="margin-top: 4%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="family_responsibilty" style="margin-top: 4%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="loss_of_job" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="economic_condition" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="death_of_nearest" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
            <select id="injury" style="margin-top: 5%;">
                <option value="2">Yes</option>
                <option value="1">No</option>
            </select>
            <br>
        </div>
        <div class="col-2">
            <p style="background-color:cornflowerblue; color: black; padding-inline-start: 8%;">Low risk level score <= 20
                <br>Intermediate risk level score <= 26<br>High risk level score <= 32<br>very high risk level score > 32
            </p>
            <button type="button" id="calculate" onclick="Calculate()">Calculate</button>
            <button type="button" id="clear" onclick="Clear()">Clear</button><br><br>
            <label for="score"><b>Enter your score: </b></label><br>
            <input type="number" id="score">
            <button type="button" id="check" onclick="Check()">Check</button>
        </div>
        <div class="col-3">
            <label><b> RESULT:</b></label><br>
            <div class="output" id="out" style="background-color: lightgray; color: red; padding-inline-start: 2%;">

            </div>
            <br>
            <div class="container-fluid" id="suggestions">
                <p id="diseases" style="color: cadetblue; display: none;"><b>Diseases according to risk level: </b></p>
                <div class="container-fuild" id="dis" style="padding-inline-start: 10%; font-weight: bold; display: none;">

                </div>
                <br>
                <p id="advice" style="color: cadetblue; display: none;"><b>Advices according to risk level: </b></p>
                <div class="container-fuild" id="adv" style="padding-inline-start: 10%; font-weight: bold; display: none;">

                </div>
                <br>
                <p id="symptom" style="color: cadetblue; display: none;"><b>Symptom due to stress: </b></p>
                <p id="sym" style="padding-inline-start: 10%; display: none;"><b>Feeling sad, Change in appetite and
                    Diarrhoea</b></p>

            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>

</html>
