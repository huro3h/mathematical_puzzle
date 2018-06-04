bucket_name = "hoge"
directories = (1770..1779).to_a.map(&:to_i)

directories.each do |directory|
  %x(aws s3 cp ./#{directory}/ s3://#{bucket_name}/photos/#{directory}/ --recursive )
end
