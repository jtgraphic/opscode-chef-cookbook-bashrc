cookbook_file "/home/ubuntu/.bashrc" do
  source "dot.bashrc"
  owner "ubuntu"
  group "ubuntu"
  mode 0775
end
