post = Post.new
attributes = post.replace(title: "test title")
# attributes now contain a randomly generated partition_key
# Usually the partition_key is 'id'.

# You can set your own partition_key:
post = Post.new(id: "myid", title: "my title")
post.attrs # confirm attrs were set
post.replace

# Note that the replace method replaces the entire item, so you
# need to merge the attributes if you want to keep the other attributes.
post = Post.find("myid")
post.attrs # confirm existing attributes
post.attrs = post.attrs.deep_merge("desc": "my desc") # keeps title field
post.replace

post = Post.find("myid")
post.attrs("desc": "my desc") # does a deep_merge
post.replace

posts = Post.scan
