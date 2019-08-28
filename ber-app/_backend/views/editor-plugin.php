<script type="text/javascript" src="<?php echo base_url()?>../tinymce/tinymce.min.js"></script>
     <script>
	function initMCEexact(e){
            tinymce.init({
				mode : "exact",
				//mode : "textareas",
				//elements : "loko",
                elements : e,
				theme: "modern",
                //width: 850,
               // height: 300,
                relative_urls : false,
                remove_script_host: false,
                plugins: [
                     "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
                     "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                     "save table contextmenu directionality emoticons template paste textcolor responsivefilemanager"
               ],
               content_css: "css/content.css",
               toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | responsivefilemanager | print preview media fullpage | forecolor backcolor emoticons", 
               style_formats: [
                    {title: "Bold text", inline: "b"},
                    {title: "Red text", inline: "span", styles: {color: "#ff0000"}},
                    {title: "Red header", block: "h1", styles: {color: "#ff0000"}},
                    {title: "Example 1", inline: "span", classes: "example1"},
                    {title: "Example 2", inline: "span", classes: "example2"},
                    {title: "Table styles"},
                    {title: "Table row 1", selector: "tr", classes: "tablerow1"}
                ],
				external_filemanager_path:"<?php echo base_url()?>../fillman---/",
				filemanager_title:"Responsive Filemanager" ,
				external_plugins: { "filemanager" : "<?php echo base_url()?>../fillman---/plugin.min.js"},
				filemanager_access_key:"asdf5T4R3E2w1q2018", 
             }); 
	} 
initMCEexact("loko"); 
initMCEexact("loko2");  
initMCEexact("loko3"); 
initMCEexact("loko4"); 
            </script>