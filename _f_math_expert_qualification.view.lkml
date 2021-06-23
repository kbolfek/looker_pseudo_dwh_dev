include: "/views/dwh/*.view"

view: +f_math_expert_qualification {

  dimension: status {
    html: {{ status | capitalize | replace: "_", " " }};;
  }

  dimension: math_expert_id {
    hidden: yes
  }

}
