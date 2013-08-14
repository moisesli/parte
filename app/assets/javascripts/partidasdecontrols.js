    $(document).ready(function(){
        $("#partidasdecontrol_sectore_id").change(function(event){
            var id = $("#partidasdecontrol_sectore_id").find(':selected').val();
            $("#partidasdecontrol_subsectore_id").load('/partidasdecontrols/mostrar/'+id);
        });
    });

    $(document).ready(function(){
        $("#partidasdecontrol_fase_id").change(function(event){
            var id = $("#partidasdecontrol_fase_id").find(':selected').val();
            $("#partidasdecontrol_subfase_id").load('/partidasdecontrols/valuesubfase/'+id);
        });
    });   

    $(document).ready(function(){
        $("#parteobra_subsectore_id").change(function(event){
            var id = $("#parteobra_subsectore_id").find(':selected').val();
            $("#parteobra_materiales_attributes_0_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_3_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_4_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_5_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_6_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_7_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_8_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_9_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_10_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_11_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_12_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_13_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_14_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_15_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_16_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_17_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_18_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_19_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_20_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_0_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_3_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_4_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_5_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_6_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_7_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_8_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_9_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_10_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_11_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_12_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_13_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_14_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_15_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_16_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_17_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_18_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_19_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_20_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);


        });
    });