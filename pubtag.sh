remote=$1
tagname=$2

if [ $# < 2 ]
then
echo "参数太少"
exit 0
fi

git add --all
git commit -m "update commit"
git push $1 master && git tag -f $2 && git push -f $1 $2
