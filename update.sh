echo -e "===============================================";
echo -e "=== MOVING to terraform-aws-course directory ==";
echo -e "===============================================";

cd terraform-aws-course;
sleep 2;

git checkout main;

echo -e "===============================================";
echo -e "========== SWITCHING to main branch ===========";
echo -e "===============================================";


git pull;

eval "terraform --version";


