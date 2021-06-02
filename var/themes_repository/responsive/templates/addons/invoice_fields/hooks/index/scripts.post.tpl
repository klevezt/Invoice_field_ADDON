{if $mode=='checkout'}
<script type="text/javascript">
    $(document).ready(function(){
        if($('.{$addons.invoice_fields.invoice_field_selector_class}').length>0){
            $timologio=$('.{$addons.invoice_fields.invoice_field_selector_class}');
            if ($timologio.val()=={$addons.invoice_fields.invoice_field_option_val}){
               $('.{$addons.invoice_fields.invoice_field_class}').show();
            }
            else{
                $('.{$addons.invoice_fields.invoice_field_class}').hide();
            }            
        }
        if($('#elm_{$addons.invoice_fields.invoice_field_id}').length>0){
            $('#elm_37').on('change', function() {
                if ($(this).find(":selected").val()=={$addons.invoice_fields.invoice_field_option_val}){
                    $('.{$addons.invoice_fields.invoice_field_class}').show();
                }
                else{
                    $('.{$addons.invoice_fields.invoice_field_class}').hide();
                }
            });
        }
    });    
    $(document).ajaxComplete(function() {
        if($('.{$addons.invoice_fields.invoice_field_selector_class}').length>0){
            $timologio=$('.{$addons.invoice_fields.invoice_field_selector_class}');
            if ($timologio.val()=={$addons.invoice_fields.invoice_field_option_val}){
               $('.{$addons.invoice_fields.invoice_field_class}').show();
            }
            else{
                $('.{$addons.invoice_fields.invoice_field_class}').hide();
            }
            $timologio.on('change', function() {
                if ($(this).find(":selected").val()=={$addons.invoice_fields.invoice_field_option_val}){
                    $('.{$addons.invoice_fields.invoice_field_class}').show();
                }
                else{
                    $('.{$addons.invoice_fields.invoice_field_class}').hide();
                }
            });
        }
    });
</script>
{/if}