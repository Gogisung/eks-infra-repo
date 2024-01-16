# eks-test-infra-repo
terraform code repo

폴더 구조 
```shell
├── README.md 
├── backend.tf 
├── data.tf 
├── main.tf 
├── modules 
│   └── eks-cluster 
│       ├── data.tf 
│       ├── main.tf 
│       ├── output.tf 
│       ├── provider.tf 
│       └── variables.tf 
├── output.tf 
└── provider.tf 

```

# AWS VPC를 생성해 주세요.
<!-- vpc와 서브넷은 AWS 담당자에게 생성 요청해주세요. -->
**gogoc 부분은 각자의 별칭으로 변경하세요**
- vpc 명: gogoc-vpc
- 퍼블릭 서브넷 2개 (AZ 이중화)
- 프라이빗 서브넷 2개 (AZ 이중화)
- IGW
- NAT

1. AWS CLI 설치
2. IAM 유저에서 AWS Access Key 발급 받기
**Access key ID 사용 주의**
***(중요!!!)미사용시 반납하고 삭제하세요. 키 유출 되지 않게 조심하세요.***

3. aws configure --profile gogoc 등록
4. aws configure --profile gogoc list
5. aws sts get-caller-identity --profile gogoc

# tfstate 구성 (= s3 사용)
- 버킷 생성
    - 서울리전(ap-northeast-2) : {각자의 별칭}-tfstats <!-- 고유한 이름으로 만들어야 한다.-->
    - 특이사항 : 버킷 버저닝 활성화


<!-- ~/.kube/config 수정하기 -->
aws --profile gogoc eks --region ap-northeast-2 update-kubeconfig --name inno-cluster --alias inno-cluster

<!-- context 스위칭 -->
- kubectl config use-context fast-cluster


