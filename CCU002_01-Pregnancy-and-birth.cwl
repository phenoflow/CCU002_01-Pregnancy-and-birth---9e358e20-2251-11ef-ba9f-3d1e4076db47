cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-pregnancy-and-birth-complication---primary:
    run: ccu002_01-pregnancy-and-birth-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  pregnant-ccu002_01-pregnancy-and-birth---primary:
    run: pregnant-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-complication---primary/output
  ccu002_01-pregnancy-and-birth-education---primary:
    run: ccu002_01-pregnancy-and-birth-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: pregnant-ccu002_01-pregnancy-and-birth---primary/output
  ccu002_01-pregnancy-and-birth-kidney---primary:
    run: ccu002_01-pregnancy-and-birth-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-education---primary/output
  ccu002_01-pregnancy-and-birth-screening---primary:
    run: ccu002_01-pregnancy-and-birth-screening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-kidney---primary/output
  ccu002_01-pregnancy-and-birth-associated---primary:
    run: ccu002_01-pregnancy-and-birth-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-screening---primary/output
  ccu002_01-pregnancy-and-birth-malignant---primary:
    run: ccu002_01-pregnancy-and-birth-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-associated---primary/output
  gestational-ccu002_01-pregnancy-and-birth---primary:
    run: gestational-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-malignant---primary/output
  secondary-ccu002_01-pregnancy-and-birth---primary:
    run: secondary-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: gestational-ccu002_01-pregnancy-and-birth---primary/output
  ccu002_01-pregnancy-and-birth-history---primary:
    run: ccu002_01-pregnancy-and-birth-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: secondary-ccu002_01-pregnancy-and-birth---primary/output
  epilepsy-ccu002_01-pregnancy-and-birth---primary:
    run: epilepsy-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-history---primary/output
  ccu002_01-pregnancy-and-birth-delivered---primary:
    run: ccu002_01-pregnancy-and-birth-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: epilepsy-ccu002_01-pregnancy-and-birth---primary/output
  hypertensive-ccu002_01-pregnancy-and-birth---primary:
    run: hypertensive-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-delivered---primary/output
  ccu002_01-pregnancy-and-birth-asthma---primary:
    run: ccu002_01-pregnancy-and-birth-asthma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hypertensive-ccu002_01-pregnancy-and-birth---primary/output
  ccu002_01-pregnancy-and-birth-confirms---primary:
    run: ccu002_01-pregnancy-and-birth-confirms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-asthma---primary/output
  ccu002_01-pregnancy-and-birth-human---primary:
    run: ccu002_01-pregnancy-and-birth-human---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-confirms---primary/output
  monochorionic-ccu002_01-pregnancy-and-birth---primary:
    run: monochorionic-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-human---primary/output
  ccu002_01-pregnancy-and-birth-hypothyroidism---primary:
    run: ccu002_01-pregnancy-and-birth-hypothyroidism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: monochorionic-ccu002_01-pregnancy-and-birth---primary/output
  ccu002_01-pregnancy-and-birth-anemia---primary:
    run: ccu002_01-pregnancy-and-birth-anemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-hypothyroidism---primary/output
  diamniotic-ccu002_01-pregnancy-and-birth---primary:
    run: diamniotic-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-anemia---primary/output
  neoplastic-ccu002_01-pregnancy-and-birth---primary:
    run: neoplastic-ccu002_01-pregnancy-and-birth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: diamniotic-ccu002_01-pregnancy-and-birth---primary/output
  ccu002_01-pregnancy-and-birth-vaccination---primary:
    run: ccu002_01-pregnancy-and-birth-vaccination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: neoplastic-ccu002_01-pregnancy-and-birth---primary/output
  ccu002_01-pregnancy-and-birth-wanted---primary:
    run: ccu002_01-pregnancy-and-birth-wanted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-vaccination---primary/output
  ccu002_01-pregnancy-and-birth-failure---primary:
    run: ccu002_01-pregnancy-and-birth-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-wanted---primary/output
  ccu002_01-pregnancy-and-birth-declined---primary:
    run: ccu002_01-pregnancy-and-birth-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-failure---primary/output
  ccu002_01-pregnancy-and-birth-stopped---primary:
    run: ccu002_01-pregnancy-and-birth-stopped---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-declined---primary/output
  ccu002_01-pregnancy-and-birth-acquired---primary:
    run: ccu002_01-pregnancy-and-birth-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-stopped---primary/output
  ccu002_01-pregnancy-and-birth-smoking---primary:
    run: ccu002_01-pregnancy-and-birth-smoking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-acquired---primary/output
  ccu002_01-pregnancy-and-birth-heart---primary:
    run: ccu002_01-pregnancy-and-birth-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-smoking---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-pregnancy-and-birth-heart---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
