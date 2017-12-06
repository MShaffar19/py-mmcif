data_ddl_core
# 
_datablock.id            ddl_core 
_datablock.description   
;
     This data block holds the core DDL.
;
# 
_dictionary.datablock_id   ddl_core 
_dictionary.title          ddl_core 
_dictionary.version        2.1.1 
# 
loop_
_dictionary_history.version 
_dictionary_history.update 
_dictionary_history.revision 
1.1    1994-07-25 
;      
       DDL 1.1 from Syd Hall et. al.
;
1.2.1  1994-09-18 
;    
       Changes:.........etc. etc. John Westbrook
;
1.2.9  1994-10-05 
;    
       Reflect the results of the Treaty of Brussels. JW.
;
2.0.1  1994-10-15 
;    
       Adapted for closer mapping to DDL1.3 and clearer presentation. SRH/NS.
;
2.0.2  1994-10-16 
;    
       Even closer...................  SRH/NS.
;
2.0.3  1994-10-17 
;
       Coming to grips with the links and dependencies..... SRH/NS.
;
2.0.4  1994-10-20 
;
       Backed in changes from mm-ddl 1.2.12
       Many other changes  ...  (JW)
;
2.0.5  1994-10-20 
;
       Some small adjustments..........SRH.                         
;
2.0.6  1994-10-20 
;
       More small adjustments..........JW.                         
;
2.0.7  1994-11-03 
;
       Changes:  (JW)
         + Place all item and item_linked category definitions with the parent 
           item. 
         + Fixed a number of not so trivial typos.
         + Corrected errors in the data type conversion table.
         + Corrected key item inconsistencies.
         + Added the item_aliases category.
;
2.0.8  1994-11-10 
;
       Miscellaneous corrections:  (JW)
         +    defined sub_category_group
         +    corrected typo in category_examples.id definition
         +    added  _item_type_conditions.name in item category
         +    added  _item_structure.name in item category
         +    corrected typo in item_aliases category definition
         +    corrected typo in sub_category.method_id  definition
;
2.0.9  1994-11-14 
;
       Changes: (JW)
         +    added ITEM_UNITS, ITEM_UNITS_LIST, and UNITS_CONVERSION
              categories.
         +    added an additional primitive type for character type items
              for which comparisons must be case insensitive.
              Since it is customary to permit item names and category
              identifiers to be specified in mixed case, it is necessary
              to declare that case should NOT be considered in any
              comparisons of these items.
;
2.0.10 1994-11-23 
;
       Changes: (JW)
         +    Several name category changes for the sake of consistency:
                enumeration         -> item_enumeration
                enumeration_default -> item_enumeration_default
                enumeration_limit   -> item_enumeration_limit
                units_conversion    -> item_units_conversion
         +    Added _item_related.function_code alternate_exclusive
              to identify mutually exclusive alternative declarations
              of the same item.
         +    Added structure options for real symmetric matrices.
         +    Changed from zero based indices to one based indices
              for compatibility with existing matrix component 
              definitions.
         +    Add _item_linked.parent_name to the key of the item_linked
              category.           
         +    Reorder items in the DDL so be alphabetical within
              category groups.
;
2.0.11 1994-11-28 
;
       Changes: (JW)
         +    Corrected spelling error for the data type code in 
              the DICTIONARY_HISTORY category.
         +    Add category BLOCK to hold the data block name and data
              block description.  The block identifier was also added 
              to  the key of the item category.  The block identifier
              can be implicitly derived from the STAR "data_" delimiter.
              This identifier is required to form the key for categories
              which are conceptually related to the data block as a 
              whole.  
;
2.0.12 1994-11-30 
;
       Changes: (JW)
         +    Added a data item _block.scope to indicate the scope of 
              data item names defined within included data blocks.
;
2.0.13 1994-12-12 
;
       Changes: (JW)
         +    Deleted data item _block.scope.  
         +    Changed DICTIONARY category key to _dictionary.block_id
              to guarantee only one dictionary definition per block.
         +    Deleted data item _item.block_id as this will be replaced
              by an item address syntax that will include block, save
              frame, and url.
;
2.0.14 1994-12-15 
;
       Changes: (JW)
         +    Made some terminology changes suggested by PMDF
              _item_enumeration.code   -> _item_enumeration.value
              ITEM_ENUMERATION_DEFAULT -> ITEM_DEFAULT
              ITEM_ENUMERATION_LIMIT   -> ITEM_RANGE
         +    Added item _item_type_list.detail
         +    Version 2.0.14 is being frozen and exported. 
;
2.0.15 1995-02-13 
;
       Changes: (JW)
         +    Added '_' prefix to all data item save frame names.
              References to data item names now always include
              a leading underscore independent of the usage context.
         +    A few miscellaneous corrections.
;
2.0.16 1995-06-18 
;
       Changes: (JW)
         +    Revised the block level categories in the following ways:
                Changed category BLOCK to DATA_BLOCK.
                Added connection from _data_block.id to _category.implicit_key
                in order to provide a formal means of merging the contents
                of categories between data blocks.  
         +    Moved ennumerations for _method_list.code and 
              method_list.language to examples.  
         +    Removed symmetric matrix options from the ennumerations
              for _item_structure.organization.
         +    Added _item_related.function codes for 'associated_value',
              'associated_esd', 'replaces' and 'replacedby'
         +    Added data items _item_aliases.dictionary and 
              _item_aliases.dictionary_version.
         +    Reorganized method categories such that multiple methods can
              be applied at each level of data structure.  Introduced a 
              consistent set of categories to hold method associations:
              ITEM_METHODS, CATEGORY_METHODS, SUB_CATEGORY_METHODS, and 
              DATA_BLOCK_METHODS.  Removed data items  _category.method_id 
              _sub_category.method_id.
;
2.0.17 1995-06-22 
;
       Changes: (JW)
         +    Quoted data vaules containing the leading string  'data_'.
;
2.1.0  1995-07-20 
;
       Changes: (JW)   
       Final adjustments before the first release of the mmCIF dictionary:
             + changed data_block to datablock to avoid any problems with 
               the STAR data_ reserved token.
             + created new category to hold item subcategory associations
               and deleted the subcategory attribute from ITEM category.
             + modified regular expressions to reflect limitations observed
               on several platforms.
             + expanded the ennumeration of _item_related.function_code.
             + removed default value from _item.manadatory_code.
             + removed type construct for date and changed date data type 
               to yyyy-mm-dd
             + added less restrictive data type for alias names.
;
2.1.1  1995-09-26 
;
       Changes: (JW)   
             + Changed regular expressions for type code to permit 
               single quote.
             + Corrected regular expression syntax for type name and 
               type date.
             + Corrected lower bound description for item_range.minimum.
               The incorrect <= condition is changed to <.
             + _item_mandatory.code has been now a mandatory item.
             + _item_aliases.dictionary and _item_aliases.dictionary_version
               are added to the composite key for category ITEM_ALIASES.
             + _datablock.id data type changes to type code.
             + Shortened the name _item_aliases.dictionary_version to 
               _item_aliases.version 
;
# 
loop_
_item_type_list.code 
_item_type_list.primitive_code 
_item_type_list.detail 
_item_type_list.construct 
code       char  'A single word'                                    
;[^\t\n "]*
;
char       char  'A single line of text'                            '[^\n]*' 
text       char  'Text which may span lines'                        .* 
int        numb  'Unsigned integer data'                            '[0-9]+' 
name       uchar 'A data item name (restrictive type)'              
'_[_A-Za-z0-9]+[.][][_A-Za-z0-9%/-]+'         
aliasname  uchar 'A DDL 1.4 data item name (less restrictive type)' 
;_[^\t\n "]+
;
idname     uchar 'A data item name component or identifier'         
'[_A-Za-z0-9]+'                               
any        char  'Any data type'                                    .* 
yyyy-mm-dd char  'A date format'                                    
'[0-9][0-9][0-9][0-9]-[0-9]?[0-9]-[0-9][0-9]' 
# 
loop_
_category_group_list.id 
_category_group_list.parent_id 
_category_group_list.description 
ddl_group          .         
;
     Component categories of the macromolecular DDL
;
datablock_group    ddl_group 
;
     Categories that describe the characteristics of data blocks.
;
category_group     ddl_group 
;
     Categories that describe the characteristics of categories.
;
sub_category_group ddl_group 
;
     Categories that describe the characteristics of subcategories.
;
item_group         ddl_group 
;
     Categories that describe the characteristics of data items.
;
dictionary_group   ddl_group 
;
     Categories that describe the dictionary.
;
compliance_group   ddl_group 
;
     Categories that are retained specifically for compliance with 
     older versions of the DDL.
;
save_DATABLOCK
    _category.description           
;
     Attributes defining the characteristics of a data block.
;
    _category.id                    datablock 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                datablock 
    _category_key.name              '_datablock.id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group        datablock 
          datablock_group  datablock 
     save_

save__datablock.id
    _item_description.name          '_datablock.id' 
    _item_description.description   
;
     The identity of the data block. 
;
    _item.name                      '_datablock.id' 
    _item.category_id               datablock 
    _item.mandatory_code            implicit 
    _item_type.name                 '_datablock.id' 
    _item_type.code                 code 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_datablock.id'  '_datablock_methods.datablock_id' 
          '_datablock.id'  '_dictionary.datablock_id' 
          '_datablock.id'  '_category.implicit_key' 
     save_

save__datablock.description
    _item_description.name          '_datablock.description' 
    _item_description.description   
;
     Text description of the data block.    
;
    _item.name                      '_datablock.description' 
    _item.category_id               datablock 
    _item.mandatory_code            yes 
    _item_type.name                 '_datablock.description' 
    _item_type.code                 code 
     save_

save_DATABLOCK_METHODS
    _category.description           
;
    Attributes specifying the association between data blocks and methods.
;
    _category.id                    datablock_methods 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          datablock_methods  '_datablock_methods.method_id' 
          datablock_methods  '_datablock_methods.datablock_id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group        datablock_methods 
          datablock_group  datablock_methods 
     save_

save__datablock_methods.datablock_id
    _item_description.name          '_datablock_methods.datablock_id' 
    _item_description.description   
;
     Identifier of data block.    
;
    _item.name                      '_datablock_methods.datablock_id' 
    _item.category_id               datablock_methods 
    _item.mandatory_code            implicit 
    _item_type.name                 '_datablock_methods.datablock_id' 
    _item_type.code                 code 
     save_

save__datablock_methods.method_id
    _item_description.name          '_datablock_methods.method_id' 
    _item_description.description   
;
     Unique method identifier associated with a data block.    
;
    _item.name                      '_datablock_methods.method_id' 
    _item.category_id               datablock_methods 
    _item.mandatory_code            yes 
    _item_type.name                 '_datablock_methods.method_id' 
    _item_type.code                 idname 
     save_

save_CATEGORY
    _category.description           
;
     Attributes defining the functionality for the entire category.
;
    _category.id                    category 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                category 
    _category_key.name              '_category.id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group       category 
          category_group  category 
     save_

save__category.id
    _item_description.name          '_category.id' 
    _item_description.description   
;
     The identity of the data category. Data items may only be looped
     with items of the same category.
;
    _item.name                      '_category.id' 
    _item.category_id               category 
    _item.mandatory_code            yes 
    _item_type.name                 '_category.id' 
    _item_type.code                 idname 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_category.id'  '_category_examples.id' 
          '_category.id'  '_category_group.category_id' 
          '_category.id'  '_category_key.id' 
          '_category.id'  '_category_methods.category_id' 
          '_category.id'  '_item.category_id' 
          '_category.id'  '_ndb_category_description.id' 
          '_category.id'  '_ndb_category_examples.id' 
     save_

save__category.description
    _item_description.name          '_category.description' 
    _item_description.description   
;
     Text description of a category.    
;
    _item.name                      '_category.description' 
    _item.category_id               category 
    _item.mandatory_code            yes 
    _item_type.name                 '_category.description' 
    _item_type.code                 text 
     save_

save__category.implicit_key
    _item_description.name          '_category.implicit_key' 
    _item_description.description   
;
     An identifier that may be used to distinguish the contents of
     like categories between data blocks.  
;
    _item.name                      '_category.implicit_key' 
    _item.category_id               category 
    _item.mandatory_code            implicit 
    _item_type.name                 '_category.implicit_key' 
    _item_type.code                 code 
     save_

save__category.mandatory_code
    _item_description.name          '_category.mandatory_code' 
    _item_description.description   
;
     Whether the category must be specified in a dictionary. 
;
    _item.name                      '_category.mandatory_code' 
    _item.category_id               category 
    _item.mandatory_code            yes 
    _item_type.name                 '_category.mandatory_code' 
    _item_type.code                 code 
     save_

save_CATEGORY_EXAMPLES
    _category.description           
;
     Example applications and descriptions of data items in this category.
;
    _category.id                    category_examples 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          category_examples  '_category_examples.id' 
          category_examples  '_category_examples.case' 
     save_

save__category_examples.id
    _item_description.name          '_category_examples.id' 
    _item_description.description   
;
     The name of category.
;
    _item.name                      '_category_examples.id' 
    _item.category_id               category_examples 
    _item.mandatory_code            implicit 
    _item_type.name                 '_category_examples.id' 
    _item_type.code                 idname 
     save_

save__category_examples.case
    _item_description.name          '_category_examples.case' 
    _item_description.description   
;
     A case of examples involving items in this category.
;
    _item.name                      '_category_examples.case' 
    _item.category_id               category_examples 
    _item.mandatory_code            yes 
    _item_type.name                 '_category_examples.case' 
    _item_type.code                 text 
     save_

save__category_examples.detail
    _item_description.name          '_category_examples.detail' 
    _item_description.description   
;
     A description of an example _category_examples.case      
;
    _item.name                      '_category_examples.detail' 
    _item.category_id               category_examples 
    _item.mandatory_code            no 
    _item_type.name                 '_category_examples.detail' 
    _item_type.code                 text 
     save_

save_CATEGORY_KEY
    _category.description           
;
     This category holds a list of the item names that uniquely
     identify the elements of the category.  
;
    _category.id                    category_key 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          category_key  '_category_key.name' 
          category_key  '_category_key.id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group       category_key 
          category_group  category_key 
     save_

save__category_key.name
    _item_description.name          '_category_key.name' 
    _item_description.description   
;
     The name of a data item that serves as a key identifier for the 
     category (eg. a component of  the primary key). 
;
    _item.name                      '_category_key.name' 
    _item.category_id               category_key 
    _item.mandatory_code            yes 
    _item_type.name                 '_category_key.name' 
    _item_type.code                 name 
     save_

save__category_key.id
    _item_description.name          '_category_key.id' 
    _item_description.description   
;
     The identifier of the category (eg. a component of  the primary key). 
;
    _item.name                      '_category_key.id' 
    _item.category_id               category_key 
    _item.mandatory_code            implicit 
    _item_type.name                 '_category_key.id' 
    _item_type.code                 idname 
     save_

save_CATEGORY_GROUP
    _category.description           
;
     Provides a list of category groups to which the base category
     belongs.
;
    _category.id                    category_group 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          category_group  '_category_group.id' 
          category_group  '_category_group.category_id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group       category_group 
          category_group  category_group 
     save_

save__category_group.id
    _item_description.name          '_category_group.id' 
    _item_description.description   
;
     The name of a category group ...
;
    _item.name                      '_category_group.id' 
    _item.category_id               category_group 
    _item.mandatory_code            yes 
    _item_type.name                 '_category_group.id' 
    _item_type.code                 idname 
     save_

save__category_group.category_id
    _item_description.name          '_category_group.category_id' 
    _item_description.description   
;
     The name of a category  ...
;
    _item.name                      '_category_group.category_id' 
    _item.category_id               category_group 
    _item.mandatory_code            implicit 
    _item_type.name                 '_category_group.category_id' 
    _item_type.code                 idname 
     save_

save_CATEGORY_GROUP_LIST
    _category.description           
;
     This category provides the definition of each category group.
     A category group is a collection of related categories.
;
    _category.id                    category_group_list 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                category_group_list 
    _category_key.name              '_category_group_list.id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group       category_group_list 
          category_group  category_group_list 
     save_

save__category_group_list.id
    _item_description.name          '_category_group_list.id' 
    _item_description.description   
;              
     The name of a category group ...
;
    _item.name                      '_category_group_list.id' 
    _item.category_id               category_group_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_category_group_list.id' 
    _item_type.code                 idname 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_category_group_list.id'  '_category_group.id' 
          '_category_group_list.id'  '_category_group_list.parent_id' 
     save_

save__category_group_list.description
    _item_description.name          '_category_group_list.description' 
    _item_description.description   
;              
     Text description of a category group...
;
    _item.name                      '_category_group_list.description' 
    _item.category_id               category_group_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_category_group_list.description' 
    _item_type.code                 text 
     save_

save__category_group_list.parent_id
    _item_description.name          '_category_group_list.parent_id' 
    _item_description.description   
;              
     The name of the optional parent category group. 
;
    _item.name                      '_category_group_list.parent_id' 
    _item.category_id               category_group_list 
    _item.mandatory_code            no 
    _item_type.name                 '_category_group_list.parent_id' 
    _item_type.code                 idname 
     save_

save_CATEGORY_METHODS
    _category.description           
;
    Attributes specifying the association between categories and methods.
;
    _category.id                    category_methods 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          category_methods  '_category_methods.method_id' 
          category_methods  '_category_methods.category_id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group       category_methods 
          category_group  category_methods 
     save_

save__category_methods.category_id
    _item_description.name          '_category_methods.category_id' 
    _item_description.description   
;              
     The name of the category 
;
    _item.name                      '_category_methods.category_id' 
    _item.category_id               category_methods 
    _item.mandatory_code            implicit 
    _item_type.name                 '_category_methods.category_id' 
    _item_type.code                 idname 
     save_

save__category_methods.method_id
    _item_description.name          '_category_methods.method_id' 
    _item_description.description   
;              
     The name of the method 
;
    _item.name                      '_category_methods.method_id' 
    _item.category_id               category_methods 
    _item.mandatory_code            yes 
    _item_type.name                 '_category_methods.method_id' 
    _item_type.code                 idname 
     save_

save_SUB_CATEGORY
    _category.description           
;
     The purpose of a sub-category is to define an association between 
     data items within a category and optionally provide a method to 
     validate the collection of items.   The sub-category named 
     'cartesian' might be applied to the data items for the coordinates
      x,  y, and z.
;
    _category.id                    sub_category 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                sub_category 
    _category_key.name              '_sub_category.id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group           sub_category 
          sub_category_group  sub_category 
     save_

save__sub_category.id
    _item_description.name          '_sub_category.id' 
    _item_description.description   
;
     The identity of the sub-category.
;
    _item.name                      '_sub_category.id' 
    _item.category_id               sub_category 
    _item.mandatory_code            yes 
    _item_type.name                 '_sub_category.id' 
    _item_type.code                 idname 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_sub_category.id'  '_sub_category_examples.id' 
          '_sub_category.id'  '_sub_category_methods.sub_category_id' 
          '_sub_category.id'  '_item_sub_category.id' 
     save_

save__sub_category.description
    _item_description.name          '_sub_category.description' 
    _item_description.description   
;
     Description of the sub-category.
;
    _item.name                      '_sub_category.description' 
    _item.category_id               sub_category 
    _item.mandatory_code            yes 
    _item_type.name                 '_sub_category.description' 
    _item_type.code                 text 
     save_

save_SUB_CATEGORY_EXAMPLES
    _category.description           
;
     Example applications and descriptions of data items in this subcategory.
;
    _category.id                    sub_category_examples 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          sub_category_examples  '_sub_category_examples.id' 
          sub_category_examples  '_sub_category_examples.case' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group           sub_category_examples 
          sub_category_group  sub_category_examples 
     save_

save__sub_category_examples.id
    _item_description.name          '_sub_category_examples.id' 
    _item_description.description   
;
     The name for the subcategory.
;
    _item.name                      '_sub_category_examples.id' 
    _item.category_id               sub_category_examples 
    _item.mandatory_code            yes 
    _item_type.name                 '_sub_category_examples.id' 
    _item_type.code                 idname 
     save_

save__sub_category_examples.case
    _item_description.name          '_sub_category_examples.case' 
    _item_description.description   
;
     An example involving items in this subcategory.
;
    _item.name                      '_sub_category_examples.case' 
    _item.category_id               sub_category_examples 
    _item.mandatory_code            yes 
    _item_type.name                 '_sub_category_examples.case' 
    _item_type.code                 text 
     save_

save__sub_category_examples.detail
    _item_description.name          '_sub_category_examples.detail' 
    _item_description.description   
;
     A description of an example _sub_category_examples.case    
;
    _item.name                      '_sub_category_examples.detail' 
    _item.category_id               sub_category_examples 
    _item.mandatory_code            no 
    _item_type.name                 '_sub_category_examples.detail' 
    _item_type.code                 text 
     save_

save_SUB_CATEGORY_METHODS
    _category.description           
;
    Attributes specifying the association between subcategories and methods.
;
    _category.id                    sub_category_methods 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          sub_category_methods  '_sub_category_methods.method_id' 
          sub_category_methods  '_sub_category_methods.sub_category_id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group           sub_category_methods 
          sub_category_group  sub_category_methods 
     save_

save__sub_category_methods.sub_category_id
    _item_description.name          '_sub_category_methods.sub_category_id' 
    _item_description.description   
;              
     The name of the subcategory 
;
    _item.name                      '_sub_category_methods.sub_category_id' 
    _item.category_id               sub_category_methods 
    _item.mandatory_code            yes 
    _item_type.name                 '_sub_category_methods.sub_category_id' 
    _item_type.code                 idname 
     save_

save__sub_category_methods.method_id
    _item_description.name          '_sub_category_methods.method_id' 
    _item_description.description   
;              
     The name of the method 
;
    _item.name                      '_sub_category_methods.method_id' 
    _item.category_id               sub_category_methods 
    _item.mandatory_code            yes 
    _item_type.name                 '_sub_category_methods.method_id' 
    _item_type.code                 idname 
     save_

save_ITEM
    _category.description           
;
     Attributes which describe the characteristics of a data item.       
;
    _category.id                    item 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item 
    _category_key.name              '_item.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item 
          item_group  item 
     save_

save__item.name
    _item_description.name          '_item.name' 
    _item_description.description   
;
     Data name of the defined item.
;
    _item.name                      '_item.name' 
    _item.category_id               item 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item.name' 
    _item_type.code                 name 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_item.name'  '_category_key.name' 
          '_item.name'  '_item_aliases.name' 
          '_item.name'  '_item_default.name' 
          '_item.name'  '_item_dependent.name' 
          '_item.name'  '_item_dependent.dependent_name' 
          '_item.name'  '_item_description.name' 
          '_item.name'  '_item_enumeration.name' 
          '_item.name'  '_item_examples.name' 
          '_item.name'  '_item_linked.child_name' 
          '_item.name'  '_item_linked.parent_name' 
          '_item.name'  '_item_methods.name' 
          '_item.name'  '_item_range.name' 
          '_item.name'  '_item_related.name' 
          '_item.name'  '_item_related.related_name' 
          '_item.name'  '_item_type.name' 
          '_item.name'  '_item_type_conditions.name' 
          '_item.name'  '_item_structure.name' 
          '_item.name'  '_item_sub_category.name' 
          '_item.name'  '_item_units.name' 
          '_item.name'  '_ndb_item_description.name' 
          '_item.name'  '_ndb_item_enumeration.name' 
          '_item.name'  '_ndb_item_examples.name' 
     save_

save__item.mandatory_code
    _item_description.name          '_item.mandatory_code' 
    _item_description.description   
;
     Signals if the defined item is mandatory for the proper description
     of its category.
;
    _item.name                      '_item.mandatory_code' 
    _item.category_id               item 
    _item.mandatory_code            yes 
    _item_type.name                 '_item.mandatory_code' 
    _item_type.code                 code 
     loop_
    _item_enumeration.name          
    _item_enumeration.value         
    _item_enumeration.detail        
          '_item.mandatory_code'  yes       'required item in this category' 
          '_item.mandatory_code'  no        'optional item in this category' 
          '_item.mandatory_code'  implicit  
          'required item but may be determined from context' 
     save_

save__item.category_id
    _item_description.name          '_item.category_id' 
    _item_description.description   
;
     This is category id of the item.
;
    _item.name                      '_item.category_id' 
    _item.category_id               item 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item.category_id' 
    _item_type.code                 idname 
     save_

save_ITEM_ALIASES
    _category.description           
;
    This category holds a list of possible alias names or synonyms for 
    each data item.  Each alias name is identified by the name and 
    version of the dictionary to which it belongs.  
;
    _category.id                    item_aliases 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_aliases  '_item_aliases.alias_name' 
          item_aliases  '_item_aliases.dictionary' 
          item_aliases  '_item_aliases.version' 
     save_

save__item_aliases.name
    _item_description.name          '_item_aliases.name' 
    _item_description.description   
;
     Name for the data item.  
;
    _item.name                      '_item_aliases.name' 
    _item.category_id               item_aliases 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_aliases.name' 
    _item_type.code                 name 
     save_

save__item_aliases.alias_name
    _item_description.name          '_item_aliases.alias_name' 
    _item_description.description   
;
     Alias name for the data item.  
;
    _item.name                      '_item_aliases.alias_name' 
    _item.category_id               item_aliases 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_aliases.alias_name' 
    _item_type.code                 aliasname 
     save_

save__item_aliases.dictionary
    _item_description.name          '_item_aliases.dictionary' 
    _item_description.description   
;
     The dictionary in which the alias name is defined.  
;
    _item.name                      '_item_aliases.dictionary' 
    _item.category_id               item_aliases 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_aliases.dictionary' 
    _item_type.code                 char 
     save_

save__item_aliases.version
    _item_description.name          '_item_aliases.version' 
    _item_description.description   
;
     The version of the dictionary in which the alias name is defined.
;
    _item.name                      '_item_aliases.version' 
    _item.category_id               item_aliases 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_aliases.version' 
    _item_type.code                 char 
     save_

save_ITEM_DEFAULT
    _category.description           
;
     Attributes specifying the default value for a data item.
;
    _category.id                    item_default 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_default 
    _category_key.name              '_item_default.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_default 
          item_group  item_default 
     save_

save__item_default.name
    _item_description.name          '_item_default.name' 
    _item_description.description   
;
     The name of item for which the default value is defined
;
    _item.name                      '_item_default.name' 
    _item.category_id               item_default 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_default.name' 
    _item_type.code                 name 
     save_

save__item_default.value
    _item_description.name          '_item_default.value' 
    _item_description.description   
;
     The default value for the defined item if it is not specified
     explicitly. If a data value is not declared, the default is
     assumed to be the most likely or natural value.
;
    _item.name                      '_item_default.value' 
    _item.category_id               item_default 
    _item.mandatory_code            no 
    _item_type.name                 '_item_default.value' 
    _item_type.code                 any 
     save_

save_ITEM_DEPENDENT
    _category.description           
;
     Attributes which identify other data items that must be specified
     for the defined data item to be valid.
;
    _category.id                    item_dependent 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_dependent  '_item_dependent.name' 
          item_dependent  '_item_dependent.dependent_name' 
     save_

save__item_dependent.name
    _item_description.name          '_item_dependent.name' 
    _item_description.description   
;
     Item name of a dependent item.
;
    _item.name                      '_item_dependent.name' 
    _item.category_id               item_dependent 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_dependent.name' 
    _item_type.code                 name 
     save_

save__item_dependent.dependent_name
    _item_description.name          '_item_dependent.dependent_name' 
    _item_description.description   
;
     Data name of a dependent item.
;
    _item.name                      '_item_dependent.dependent_name' 
    _item.category_id               item_dependent 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_dependent.dependent_name' 
    _item_type.code                 name 
     save_

save_ITEM_DESCRIPTION
    _category.description           
;
     This category holds the descriptions of each data item.
;
    _category.id                    item_description 
    _category.mandatory_code        yes 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_description  '_item_description.name' 
          item_description  '_item_description.description' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_description 
          item_group  item_description 
     save_

save__item_description.name
    _item_description.name          '_item_description.name' 
    _item_description.description   
;
    Tne name of data item.                              
;
    _item.name                      '_item_description.name' 
    _item.category_id               item_description 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_description.name' 
    _item_type.code                 name 
     save_

save__item_description.description
    _item_description.name          '_item_description.description' 
    _item_description.description   
;
     Text decription of the defined data item.                              
;
    _item.name                      '_item_description.description' 
    _item.category_id               item_description 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_description.description' 
    _item_type.code                 text 
     save_

save_ITEM_ENUMERATION
    _category.description           
;
     Attributes which specify the permitted enumeration of the items.   
;
    _category.id                    item_enumeration 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_enumeration  '_item_enumeration.name' 
          item_enumeration  '_item_enumeration.value' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_enumeration 
          item_group  item_enumeration 
     save_

save__item_enumeration.name
    _item_description.name          '_item_enumeration.name' 
    _item_description.description   
;
     Name of data item.
;
    _item.name                      '_item_enumeration.name' 
    _item.category_id               item_enumeration 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_enumeration.name' 
    _item_type.code                 name 
     save_

save__item_enumeration.value
    _item_description.name          '_item_enumeration.value' 
    _item_description.description   
;
     A permissible value, character or number, for the defined item.
;
    _item.name                      '_item_enumeration.value' 
    _item.category_id               item_enumeration 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_enumeration.value' 
    _item_type.code                 any 
     save_

save__item_enumeration.detail
    _item_description.name          '_item_enumeration.detail' 
    _item_description.description   
;
     A description of a permissible value for the defined item.
;
    _item.name                      '_item_enumeration.detail' 
    _item.category_id               item_enumeration 
    _item.mandatory_code            no 
    _item_type.name                 '_item_enumeration.detail' 
    _item_type.code                 text 
     save_

save_ITEM_EXAMPLES
    _category.description           
;
    Attributes for describing application examples of the data item. 
;
    _category.id                    item_examples 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_examples  '_item_examples.name' 
          item_examples  '_item_examples.case' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_examples 
          item_group  item_examples 
     save_

save__item_examples.name
    _item_description.name          '_item_examples.name' 
    _item_description.description   
;
     The name of data item for the example.
;
    _item.name                      '_item_examples.name' 
    _item.category_id               item_examples 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_examples.name' 
    _item_type.code                 name 
     save_

save__item_examples.case
    _item_description.name          '_item_examples.case' 
    _item_description.description   
;
     An example application of the defined data item.
;
    _item.name                      '_item_examples.case' 
    _item.category_id               item_examples 
    _item.mandatory_code            no 
    _item_type.name                 '_item_examples.case' 
    _item_type.code                 text 
     save_

save__item_examples.detail
    _item_description.name          '_item_examples.detail' 
    _item_description.description   
;
     A description of an example specified in _item_example.case
;
    _item.name                      '_item_examples.detail' 
    _item.category_id               item_examples 
    _item.mandatory_code            no 
    _item_type.name                 '_item_examples.detail' 
    _item_type.code                 text 
     save_

save_ITEM_LINKED
    _category.description           
;
     Attributes which describe how equivalent data items are linked
     within categories and across different categories.
;
    _category.id                    item_linked 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_linked  '_item_linked.child_name' 
          item_linked  '_item_linked.parent_name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_linked 
          item_group  item_linked 
     save_

save__item_linked.child_name
    _item_description.name          '_item_linked.child_name' 
    _item_description.description   
;
     Name of the child data item.
;
    _item.name                      '_item_linked.child_name' 
    _item.category_id               item_linked 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_linked.child_name' 
    _item_type.code                 name 
     save_

save__item_linked.parent_name
    _item_description.name          '_item_linked.parent_name' 
    _item_description.description   
;
     Name of the parent data item.
;
    _item.name                      '_item_linked.parent_name' 
    _item.category_id               item_linked 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_linked.parent_name' 
    _item_type.code                 name 
     save_

save_ITEM_METHODS
    _category.description           
;
    Attributes specifying the association between data items and methods.
;
    _category.id                    item_methods 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_methods  '_item_methods.method_id' 
          item_methods  '_item_methods.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_methods 
          item_group  item_methods 
     save_

save__item_methods.name
    _item_description.name          '_item_methods.name' 
    _item_description.description   
;
     The name of the item
;
    _item.name                      '_item_methods.name' 
    _item.category_id               item_methods 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_methods.name' 
    _item_type.code                 name 
     save_

save__item_methods.method_id
    _item_description.name          '_item_methods.method_id' 
    _item_description.description   
;
     The name of itemthe method
;
    _item.name                      '_item_methods.method_id' 
    _item.category_id               item_methods 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_methods.method_id' 
    _item_type.code                 idname 
     save_

save_ITEM_RANGE
    _category.description           
;
     The range of permissible values of a data item.  When multiple
     ranges are specified they are interpreted sequentially 
     using a logical OR.  To specify that an item value may be
     equal to a boundary value,  specify an item range where the 
     maximum and mimimum values equal the boundary value.
;
    _category.id                    item_range 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_range  '_item_range.name' 
          item_range  '_item_range.minimum' 
          item_range  '_item_range.maximum' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_range 
          item_group  item_range 
     save_

save__item_range.name
    _item_description.name          '_item_range.name' 
    _item_description.description   
;
     Name of data item ...
;
    _item.name                      '_item_range.name' 
    _item.category_id               item_range 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_range.name' 
    _item_type.code                 name 
     save_

save__item_range.minimum
    _item_description.name          '_item_range.minimum' 
    _item_description.description   
;
     Minimum permissible value of a data item or the lower bound
     of a permissible range.  ( minimum value <  data value)
;
    _item.name                      '_item_range.minimum' 
    _item.category_id               item_range 
    _item.mandatory_code            no 
    _item_type.name                 '_item_range.minimum' 
    _item_type.code                 any 
     save_

save__item_range.maximum
    _item_description.name          '_item_range.maximum' 
    _item_description.description   
;
     Maximum permissible value of a data item or the upper bound
     of a permissible range.  ( maximum value >  data value)
;
    _item.name                      '_item_range.maximum' 
    _item.category_id               item_range 
    _item.mandatory_code            no 
    _item_type.name                 '_item_range.maximum' 
    _item_type.code                 any 
     save_

save_ITEM_RELATED
    _category.description           
;
    Attributes which specify recognized relationships between data items.      
;
    _category.id                    item_related 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_related  '_item_related.name' 
          item_related  '_item_related.related_name' 
          item_related  '_item_related.function_code' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_related 
          item_group  item_related 
     save_

save__item_related.name
    _item_description.name          '_item_related.name' 
    _item_description.description   
;
     Identifies a defined data item ...
;
    _item.name                      '_item_related.name' 
    _item.category_id               item_related 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_related.name' 
    _item_type.code                 name 
     save_

save__item_related.related_name
    _item_description.name          '_item_related.related_name' 
    _item_description.description   
;
     Identifies a data item by name which is closely related to the
     defined data item by the manner described by _item_related.function_code
;
    _item.name                      '_item_related.related_name' 
    _item.category_id               item_related 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_related.related_name' 
    _item_type.code                 name 
     save_

save__item_related.function_code
    _item_description.name          '_item_related.function_code' 
    _item_description.description   
;
     The code for the type of relationship of the item identified by
     _item_related.name and the defined item.

      ALTERNATE  indicates that the item identified in 
      _item_related.related_name is an alternative expression in terms 
      of its application and attributes to the item in this definition.

      ALTERNATE_EXCLUSIVE indicates that the item identified in 
      _item_related.related_name is an alternative expression in terms
      of its application and attributes to the item in this definition.
      Only one of the alternative forms may be specified.

      CONVENTION  indicates that the item identified in 
      _item_related.related_name differs from the defined item only
      in terms of a convention in its expression.

      CONVERSION_CONSTANT indicates that the item identified in 
      _item_related.related_name differs from the defined item only
      by a known constant.

      CONVERSION_ARBITRARY indicates that the item identified in 
      _item_related.related_name differs from the defined item only
      by a arbitrary constant.

      REPLACES  indicates that the defined item replaces the item identified 
      in _item_related.related_name.

      REPLACEDBY  indicates that the defined item is replaced by the
      item identified in  _item_related.related_name.

      ASSOCIATED_VALUE indicates that the item identified in 
      _item_related.related_name is meaningful when associated with the
      defined item.  

      ASSOCIATED_ESD indicates that the item identified in 
      _item_related.related_name is the estimated standard deviation of
      of the defined item.
;
    _item.name                      '_item_related.function_code' 
    _item.category_id               item_related 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_related.function_code' 
    _item_type.code                 code 
     loop_
    _item_enumeration.name          
    _item_enumeration.value         
    _item_enumeration.detail        
          '_item_related.function_code'  alternate             
          'alternate form of the item' 
          '_item_related.function_code'  alternate_exclusive   
          'mutually exclusive alternate form of the item' 
          '_item_related.function_code'  convention            
          'depends on defined convention' 
          '_item_related.function_code'  conversion_constant   
          'related by a known conversion factor' 
          '_item_related.function_code'  conversion_arbitrary  
          'related by a arbitrary conversion factor' 
          '_item_related.function_code'  replaces              
          'a replacement definition' 
          '_item_related.function_code'  replacedby            
          'an obsolete definition' 
          '_item_related.function_code'  associated_value      
          'a meaningful value when related to the item' 
          '_item_related.function_code'  associated_esd        
          'an estimated standard deviation of the item' 
     save_

save_ITEM_STRUCTURE
    _category.description           
;
    This category holds the association between data items and 
    named vector/matrix declarations.
;
    _category.id                    item_structure 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_structure 
    _category_key.name              '_item_structure.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_structure 
          item_group  item_structure 
     save_

save__item_structure.name
    _item_description.name          '_item_structure.name' 
    _item_description.description   
;
     The name of data item
;
    _item.name                      '_item_structure.name' 
    _item.category_id               item_structure 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_structure.name' 
    _item_type.code                 name 
     save_

save__item_structure.code
    _item_description.name          '_item_structure.code' 
    _item_description.description   
;
     Provides an indirect reference into the list of structure 
     type definition in category item_structure_list.
;
    _item.name                      '_item_structure.code' 
    _item.category_id               item_structure 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_structure.code' 
    _item_type.code                 code 
     save_

save__item_structure.organization
    _item_description.name          '_item_structure.organization' 
    _item_description.description   
;
     Identifies if the struct is defined in column or row major order.
     Only the unique elements of symmetric matrices are specified.
;
    _item.name                      '_item_structure.organization' 
    _item.category_id               item_structure 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_structure.organization' 
    _item_type.code                 code 
     loop_
    _item_enumeration.name          
    _item_enumeration.value         
    _item_enumeration.detail        
          '_item_structure.organization'  columnwise  'column major order' 
          '_item_structure.organization'  rowwise     'row major order' 
     save_

save_ITEM_STRUCTURE_LIST
    _category.description           
;
     This category holds a description for each structure type.
;
    _category.id                    item_structure_list 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_structure_list  '_item_structure_list.code' 
          item_structure_list  '_item_structure_list.index' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_structure_list 
          item_group  item_structure_list 
     save_

save__item_structure_list.code
    _item_description.name          '_item_structure_list.code' 
    _item_description.description   
;
     The name of the matrix/vector structure declaration.
;
    _item.name                      '_item_structure_list.code' 
    _item.category_id               item_structure_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_structure_list.code' 
    _item_type.code                 code 
    _item_linked.parent_name        '_item_structure_list.code' 
    _item_linked.child_name         '_item_structure.code' 
     save_

save__item_structure_list.index
    _item_description.name          '_item_structure_list.index' 
    _item_description.description   
;
    Identifies the one based index of a row/column of the structure.
;
    _item.name                      '_item_structure_list.index' 
    _item.category_id               item_structure_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_structure_list.index' 
    _item_type.code                 int 
     loop_
    _item_range.name                
    _item_range.minimum             
    _item_range.maximum             
          '_item_structure_list.index'  1  1 
          '_item_structure_list.index'  1  . 
     save_

save__item_structure_list.dimension
    _item_description.name          '_item_structure_list.dimension' 
    _item_description.description   
;
    Identifies the length of this row/column of the structure.
;
    _item.name                      '_item_structure_list.dimension' 
    _item.category_id               item_structure_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_structure_list.dimension' 
    _item_type.code                 int 
     loop_
    _item_range.name                
    _item_range.minimum             
    _item_range.maximum             
          '_item_structure_list.dimension'  1  1 
          '_item_structure_list.dimension'  1  . 
     save_

save_ITEM_SUB_CATEGORY
    _category.description           
;
     This category assigns data items to subcategories.
;
    _category.id                    item_sub_category 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_sub_category  '_item_sub_category.id' 
          item_sub_category  '_item_sub_category.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          sub_category_group  item_sub_category 
          item_group          item_sub_category 
     save_

save__item_sub_category.name
    _item_description.name          '_item_sub_category.name' 
    _item_description.description   
;
    The name of data item
;
    _item.name                      '_item_sub_category.name' 
    _item.category_id               item_sub_category 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_sub_category.name' 
    _item_type.code                 name 
     save_

save__item_sub_category.id
    _item_description.name          '_item_sub_category.id' 
    _item_description.description   
;
    The identifier of subcategory
;
    _item.name                      '_item_sub_category.id' 
    _item.category_id               item_sub_category 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_sub_category.id' 
    _item_type.code                 idname 
     save_

save_ITEM_TYPE
    _category.description           
;
     Attributes for specifying the data type code for each data item.
;
    _category.id                    item_type 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_type 
    _category_key.name              '_item_type.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_type 
          item_group  item_type 
     save_

save__item_type.name
    _item_description.name          '_item_type.name' 
    _item_description.description   
;
    The name of data item
;
    _item.name                      '_item_type.name' 
    _item.category_id               item_type 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_type.name' 
    _item_type.code                 name 
     save_

save__item_type.code
    _item_description.name          '_item_type.code' 
    _item_description.description   
;
    Data type of defined data item
;
    _item.name                      '_item_type.code' 
    _item.category_id               item_type 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_type.code' 
    _item_type.code                 code 
     save_

save_ITEM_TYPE_CONDITIONS
    _category.description           
;
    Attributes for specifying additional conditions associated with 
    the data type of the item.
;
    _category.id                    item_type_conditions 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_type_conditions 
    _category_key.name              '_item_type_conditions.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group         item_type_conditions 
          item_group        item_type_conditions 
          compliance_group  item_type_conditions 
     save_

save__item_type_conditions.name
    _item_description.name          '_item_type_conditions.name' 
    _item_description.description   
;    
     The name of data item
;
    _item.name                      '_item_type_conditions.name' 
    _item.category_id               item_type_conditions 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_type_conditions.name' 
    _item_type.code                 name 
     save_

save__item_type_conditions.code
    _item_description.name          '_item_type_conditions.code' 
    _item_description.description   
;    
     Codes defining conditions on the _item_type.code specification.

     'esd' permits a number string to contain an appended standard
           deviation number enclosed within parentheses. E.g. 4.37(5)

     'seq' permits data to be declared as a sequence of values
           separated by a comma <,> or a colon <:>.
           * The sequence v1,v2,v3,. signals that v1, v2, v3, etc.
             are alternative values or the data item.
           * The sequence v1:v2 signals that v1 and v2 are the boundary
             values of a continuous range of values. This mechanism
             was used to specify permitted ranges of an item in 
             previous DDL versions.
      Combinations of alternate and range sequences are permitted.
;
    _item.name                      '_item_type_conditions.code' 
    _item.category_id               item_type_conditions 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_type_conditions.code' 
    _item_type.code                 code 
     loop_
    _item_enumeration.name          
    _item_enumeration.value         
    _item_enumeration.detail        
          '_item_type_conditions.code'  none  
          'no extra conditions apply to this data item' 
          '_item_type_conditions.code'  esd   
          'numbers may have esd values appended within ()' 
          '_item_type_conditions.code'  seq   
          'data may be declared as a comma or colon separated sequence' 
     save_

save_ITEM_TYPE_LIST
    _category.description           
;
     Attributes which define each type code.
;
    _category.id                    item_type_list 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_type_list 
    _category_key.name              '_item_type_list.code' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_type_list 
          item_group  item_type_list 
     save_

save__item_type_list.code
    _item_description.name          '_item_type_list.code' 
    _item_description.description   
;
     The codes specifying the nature of the data value.
;
    _item.name                      '_item_type_list.code' 
    _item.category_id               item_type_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_type_list.code' 
    _item_type.code                 code 
    _item_linked.parent_name        '_item_type_list.code' 
    _item_linked.child_name         '_item_type.code' 
     save_

save__item_type_list.primitive_code
    _item_description.name          '_item_type_list.primitive_code' 
    _item_description.description   
;
     The codes specifying the primitive type of the data value.
;
    _item.name                      '_item_type_list.primitive_code' 
    _item.category_id               item_type_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_type_list.primitive_code' 
    _item_type.code                 code 
     loop_
    _item_enumeration.name          
    _item_enumeration.value         
    _item_enumeration.detail        
          '_item_type_list.primitive_code'  numb   
          'numerically-interpretable string' 
          '_item_type_list.primitive_code'  char   
          'character or text string (case-sensitive)' 
          '_item_type_list.primitive_code'  uchar  
          'character or text string (case-insensitive)' 
          '_item_type_list.primitive_code'  null   
          'for dictionary purposes only' 
     save_

save__item_type_list.construct
    _item_description.name          '_item_type_list.construct' 
    _item_description.description   
;
    When a data value can be defined as a pre-determined sequence of 
    characters, or optional characters, or data names (for which the
    definition is also available), it is specified as a construction.
    The rules of construction conform to the the regular expression
    (REGEX) specificatiopns detailed in the IEEE document P1003.2
    Draft 11.2 Sept 1991 (ftp file '/doc/POSIX/1003.2/p121-140').
    Resolved data names for which _item_type_list.construct 
    specifications exist are replaced by these constructions, 
    otherwise the data name string is not replaced.
;
    _item.name                      '_item_type_list.construct' 
    _item.category_id               item_type_list 
    _item.mandatory_code            no 
    _item_type.name                 '_item_type_list.construct' 
    _item_type.code                 char 
    _item_examples.name             '_item_type_list.construct' 
    _item_examples.case             '{_year}-{_month}-{_day}' 
    _item_examples.detail           'typical construction for _date' 
     save_

save__item_type_list.detail
    _item_description.name          '_item_type_list.detail' 
    _item_description.description   
;
     An optional description of the data type
;
    _item.name                      '_item_type_list.detail' 
    _item.category_id               item_type_list 
    _item.mandatory_code            no 
    _item_type.name                 '_item_type_list.detail' 
    _item_type.code                 text 
     save_

save_ITEM_UNITS
    _category.description           
;
     Specifies the physical units in which data items are expressed.
;
    _category.id                    item_units 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_units 
    _category_key.name              '_item_units.name' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_units 
          item_group  item_units 
     save_

save__item_units.name
    _item_description.name          '_item_units.name' 
    _item_description.description   
;
     The name of data item
;
    _item.name                      '_item_units.name' 
    _item.category_id               item_units 
    _item.mandatory_code            implicit 
    _item_type.name                 '_item_units.name' 
    _item_type.code                 name 
     save_

save__item_units.code
    _item_description.name          '_item_units.code' 
    _item_description.description   
;
     The identifier of unit in which the data item is expressed.
;
    _item.name                      '_item_units.code' 
    _item.category_id               item_units 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_units.code' 
    _item_type.code                 code 
     save_

save_ITEM_UNITS_CONVERSION
    _category.description           
;
     Conversion factors between the various units of measure defined
     in the ITEM_UNITS_LIST category.
;
    _category.id                    item_units_conversion 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          item_units_conversion  '_item_units_conversion.from_code' 
          item_units_conversion  '_item_units_conversion.to_code' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_units_conversion 
          item_group  item_units_conversion 
     save_

save__item_units_conversion.from_code
    _item_description.name          '_item_units_conversion.from_code' 
    _item_description.description   
;
     The unit system on which the conversion operation is applied
     to produce the unit system specified in _item_units_conversion.to_code.

         <to_code> =  <from_code> <operator> <factor>
;
    _item.name                      '_item_units_conversion.from_code' 
    _item.category_id               item_units_conversion 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_units_conversion.from_code' 
    _item_type.code                 code 
     save_

save__item_units_conversion.to_code
    _item_description.name          '_item_units_conversion.to_code' 
    _item_description.description   
;
     The unit system produced after an operation is applied to the unit
     system specified by  _item_units_conversion.from_code.

         <to_code> =  <from_code> <operator> <factor>
;
    _item.name                      '_item_units_conversion.to_code' 
    _item.category_id               item_units_conversion 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_units_conversion.to_code' 
    _item_type.code                 code 
     save_

save__item_units_conversion.operator
    _item_description.name          '_item_units_conversion.operator' 
    _item_description.description   
;
     The arithmetic operator required to convert between the 
     unit systems:
         <to_code> =  <from_code> <operator> <factor>
;
    _item.name                      '_item_units_conversion.operator' 
    _item.category_id               item_units_conversion 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_units_conversion.operator' 
    _item_type.code                 code 
     loop_
    _item_enumeration.name          
    _item_enumeration.value         
    _item_enumeration.detail        
          '_item_units_conversion.operator'  +  addition 
          '_item_units_conversion.operator'  -  subtraction 
          '_item_units_conversion.operator'  *  multiplication 
          '_item_units_conversion.operator'  /  division 
     save_

save__item_units_conversion.factor
    _item_description.name          '_item_units_conversion.factor' 
    _item_description.description   
;
     The arithmetic operation required to convert between the 
     unit systems:
         <to_code> =  <from_code> <operator> <factor>
;
    _item.name                      '_item_units_conversion.factor' 
    _item.category_id               item_units_conversion 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_units_conversion.factor' 
    _item_type.code                 any 
     save_

save_ITEM_UNITS_LIST
    _category.description           
;
     Attributes which describe the physical units of measure
     in which data items may be expressed.
;
    _category.id                    item_units_list 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                item_units_list 
    _category_key.name              '_item_units_list.code' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   item_units_list 
          item_group  item_units_list 
     save_

save__item_units_list.code
    _item_description.name          '_item_units_list.code' 
    _item_description.description   
;
     The code specifying the name of the unit of measure.
;
    _item.name                      '_item_units_list.code' 
    _item.category_id               item_units_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_item_units_list.code' 
    _item_type.code                 code 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_item_units_list.code'  '_item_units.code' 
          '_item_units_list.code'  '_item_units_conversion.from_code' 
          '_item_units_list.code'  '_item_units_conversion.to_code' 
     save_

save__item_units_list.detail
    _item_description.name          '_item_units_list.detail' 
    _item_description.description   
;
     A description of the unit of measure.
;
    _item.name                      '_item_units_list.detail' 
    _item.category_id               item_units_list 
    _item.mandatory_code            no 
    _item_type.name                 '_item_units_list.detail' 
    _item_type.code                 text 
     save_

save_METHOD_LIST
    _category.description           
;
    Attributes specifying the list of methods applicable to data items,
    sub-categories, and categories.     
;
    _category.id                    method_list 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                method_list 
    _category_key.name              '_method_list.id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group       method_list 
          item_group      method_list 
          category_group  method_list 
     save_

save__method_list.id
    _item_description.name          '_method_list.id' 
    _item_description.description   
;
     Identity of method in the list referenced by _method.id
;
    _item.name                      '_method_list.id' 
    _item.category_id               method_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_method_list.id' 
    _item_type.code                 idname 
     loop_
    _item_linked.parent_name        
    _item_linked.child_name         
          '_method_list.id'  '_item_methods.method_id' 
          '_method_list.id'  '_category_methods.method_id' 
          '_method_list.id'  '_sub_category_methods.method_id' 
          '_method_list.id'  '_datablock_methods.method_id' 
     save_

save__method_list.detail
    _item_description.name          '_method_list.detail' 
    _item_description.description   
;
     Description of application method in _method_list.id           
;
    _item.name                      '_method_list.detail' 
    _item.category_id               method_list 
    _item.mandatory_code            no 
    _item_type.name                 '_method_list.detail' 
    _item_type.code                 text 
     save_

save__method_list.inline
    _item_description.name          '_method_list.inline' 
    _item_description.description   
;
     Inline text of a method associated with the data item.
;
    _item.name                      '_method_list.inline' 
    _item.category_id               method_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_method_list.inline' 
    _item_type.code                 text 
     save_

save__method_list.code
    _item_description.name          '_method_list.code' 
    _item_description.description   
;
     A code that describes the function of the method.     
;
    _item.name                      '_method_list.code' 
    _item.category_id               method_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_method_list.code' 
    _item_type.code                 code 
     loop_
    _item_examples.name             
    _item_examples.case             
    _item_examples.detail           
          '_method_list.code'  calculation     'method to calculate the item ' 
          '_method_list.code'  verification    
          'method to verify the data item ' 
          '_method_list.code'  cast            
          'method to provide cast conversion ' 
          '_method_list.code'  addition        'method to define item + item ' 
          '_method_list.code'  division        'method to define item / item ' 
          '_method_list.code'  multiplication  'method to define item * item ' 
          '_method_list.code'  equivalence     'method to define item = item ' 
          '_method_list.code'  other           'miscellaneous method ' 
     save_

save__method_list.language
    _item_description.name          '_method_list.language' 
    _item_description.description   
;
     Language in which the method is expressed.
;
    _item.name                      '_method_list.language' 
    _item.category_id               method_list 
    _item.mandatory_code            yes 
    _item_type.name                 '_method_list.language' 
    _item_type.code                 code 
     loop_
    _item_examples.name             
    _item_examples.case             
    _item_examples.detail           
          '_method_list.language'  BNF      ? 
          '_method_list.language'  C        ? 
          '_method_list.language'  C++      ? 
          '_method_list.language'  FORTRAN  ? 
          '_method_list.language'  LISP     ? 
          '_method_list.language'  PASCAL   ? 
          '_method_list.language'  PEARL    ? 
          '_method_list.language'  TCL      ? 
          '_method_list.language'  OTHER    ? 
     save_

save_DICTIONARY
    _category.description           
;
     Attributes for specifying the dictionary title, version and 
     data block identifier.
;
    _category.id                    dictionary 
    _category.mandatory_code        yes 
    _category.implicit_key          ddl_core 
    _category_key.id                dictionary 
    _category_key.name              '_dictionary.datablock_id' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group         dictionary 
          datablock_group   dictionary 
          dictionary_group  dictionary 
     save_

save__dictionary.datablock_id
    _item.name                      '_dictionary.datablock_id' 
    _item.category_id               dictionary 
    _item.mandatory_code            implicit 
    _item_type.name                 '_dictionary.datablock_id' 
    _item_type.code                 code 
     save_

save__dictionary.title
    _item_description.name          '_dictionary.title' 
    _item_description.description   
;
     Title identification of the dictionary.                   
;
    _item.name                      '_dictionary.title' 
    _item.category_id               dictionary 
    _item.mandatory_code            yes 
    _item_type.name                 '_dictionary.title' 
    _item_type.code                 char 
     save_

save__dictionary.version
    _item_description.name          '_dictionary.version' 
    _item_description.description   
;
     A unique version identifier for the dictionary.
;
    _item.name                      '_dictionary.version' 
    _item.category_id               dictionary 
    _item.mandatory_code            yes 
    _item_type.name                 '_dictionary.version' 
    _item_type.code                 char 
     save_

save_DICTIONARY_HISTORY
    _category.description           
;
   Attributes for specifying the revision history of the dictionary.
;
    _category.id                    dictionary_history 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
    _category_key.id                dictionary_history 
    _category_key.name              '_dictionary_history.version' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group         dictionary_history 
          dictionary_group  dictionary_history 
     save_

save__dictionary_history.version
    _item_description.name          '_dictionary_history.version' 
    _item_description.description   
;
     A unique version identifier for the dictionary revision.
;
    _item.name                      '_dictionary_history.version' 
    _item.category_id               dictionary_history 
    _item.mandatory_code            yes 
    _item_type.name                 '_dictionary_history.version' 
    _item_type.code                 char 
    _item_linked.parent_name        '_dictionary_history.version' 
    _item_linked.child_name         '_dictionary.version' 
     save_

save__dictionary_history.update
    _item_description.name          '_dictionary_history.update' 
    _item_description.description   
;
     The date that the last dictionary revision took place.
;
    _item.name                      '_dictionary_history.update' 
    _item.category_id               dictionary_history 
    _item.mandatory_code            yes 
    _item_type.name                 '_dictionary_history.update' 
    _item_type.code                 yyyy-mm-dd 
     save_

save__dictionary_history.revision
    _item_description.name          '_dictionary_history.revision' 
    _item_description.description   
;
     Text description of the dictionary revision.
;
    _item.name                      '_dictionary_history.revision' 
    _item.category_id               dictionary_history 
    _item.mandatory_code            yes 
    _item_type.name                 '_dictionary_history.revision' 
    _item_type.code                 text 
     save_

save_NDB_CATEGORY_DESCRIPTION
    _category.description           
;
     NDB description of data items in this category.
;
    _category.id                    ndb_category_description 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          ndb_category_description  '_ndb_category_description.id' 
          ndb_category_description  '_ndb_category_description.description' 
     save_

save__ndb_category_description.id
    _item.name                      '_ndb_category_description.id' 
    _item.category_id               ndb_category_description 
    _item.mandatory_code            implicit 
    _item_type.name                 '_ndb_category_description.id' 
    _item_type.code                 idname 
     save_

save__ndb_category_description.description
    _item_description.name          '_ndb_category_description.description' 
    _item_description.description   
;
     NDB text description of a category.
;
    _item.name                      '_ndb_category_description.description' 
    _item.category_id               ndb_category_description 
    _item.mandatory_code            yes 
    _item_type.name                 '_ndb_category_description.description' 
    _item_type.code                 text 
     save_

save_NDB_CATEGORY_EXAMPLES
    _category.description           
;
     NDB example applications and descriptions of data items in this
category.
;
    _category.id                    ndb_category_examples 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          ndb_category_examples  '_ndb_category_examples.id' 
          ndb_category_examples  '_ndb_category_examples.case' 
     save_

save__ndb_category_examples.id
    _item.name                      '_ndb_category_examples.id' 
    _item.category_id               ndb_category_examples 
    _item.mandatory_code            implicit 
    _item_type.name                 '_ndb_category_examples.id' 
    _item_type.code                 idname 
     save_

save__ndb_category_examples.case
    _item_description.name          '_ndb_category_examples.case' 
    _item_description.description   
;
     NDB case of examples involving items in this category.
;
    _item.name                      '_ndb_category_examples.case' 
    _item.category_id               ndb_category_examples 
    _item.mandatory_code            yes 
    _item_type.name                 '_ndb_category_examples.case' 
    _item_type.code                 text 
     save_

save__ndb_category_examples.detail
    _item_description.name          '_ndb_category_examples.detail' 
    _item_description.description   
;
     NDB description of an example _category_examples.case
;
    _item.name                      '_ndb_category_examples.detail' 
    _item.category_id               ndb_category_examples 
    _item.mandatory_code            no 
    _item_type.name                 '_ndb_category_examples.detail' 
    _item_type.code                 text 
     save_

save_NDB_ITEM_DESCRIPTION
    _category.description           
;
     This category holds the NDB descriptions of each data item.
;
    _category.id                    ndb_item_description 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          ndb_item_description  '_ndb_item_description.name' 
          ndb_item_description  '_ndb_item_description.description' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   ndb_item_description 
          item_group  ndb_item_description 
     save_

save__ndb_item_description.name
    _item_description.name          '_ndb_item_description.name' 
    _item_description.description   
;
     Data name of the defined item.
;
    _item.name                      '_ndb_item_description.name' 
    _item.category_id               ndb_item_description 
    _item.mandatory_code            implicit 
    _item_type.name                 '_ndb_item_description.name' 
    _item_type.code                 name 
     save_

save__ndb_item_description.description
    _item_description.name          '_ndb_item_description.description' 
    _item_description.description   
;
     NDB text description of the defined data item.
;
    _item.name                      '_ndb_item_description.description' 
    _item.category_id               ndb_item_description 
    _item.mandatory_code            yes 
    _item_type.name                 '_ndb_item_description.description' 
    _item_type.code                 text 
     save_

save_NDB_ITEM_ENUMERATION
    _category.description           
;
     Attributes which specify the permitted enumeration of the items.
;
    _category.id                    ndb_item_enumeration 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          ndb_item_enumeration  '_ndb_item_enumeration.name' 
          ndb_item_enumeration  '_ndb_item_enumeration.value' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   ndb_item_enumeration 
          item_group  ndb_item_enumeration 
     save_

save__ndb_item_enumeration.name
    _item.name                      '_ndb_item_enumeration.name' 
    _item.category_id               ndb_item_enumeration 
    _item.mandatory_code            implicit 
    _item_type.name                 '_ndb_item_enumeration.name' 
    _item_type.code                 name 
     save_

save__ndb_item_enumeration.value
    _item_description.name          '_ndb_item_enumeration.value' 
    _item_description.description   
;
     A permissible value, character or number, for the defined item.
;
    _item.name                      '_ndb_item_enumeration.value' 
    _item.category_id               ndb_item_enumeration 
    _item.mandatory_code            yes 
    _item_type.name                 '_ndb_item_enumeration.value' 
    _item_type.code                 any 
     save_

save__ndb_item_enumeration.detail
    _item_description.name          '_ndb_item_enumeration.detail' 
    _item_description.description   
;
     A description of a permissible value for the defined item.
;
    _item.name                      '_ndb_item_enumeration.detail' 
    _item.category_id               ndb_item_enumeration 
    _item.mandatory_code            no 
    _item_type.name                 '_ndb_item_enumeration.detail' 
    _item_type.code                 text 
     save_

save_NDB_ITEM_EXAMPLES
    _category.description           
;
    Attributes for describing application examples of the data item.
;
    _category.id                    ndb_item_examples 
    _category.mandatory_code        no 
    _category.implicit_key          ddl_core 
     loop_
    _category_key.id                
    _category_key.name              
          ndb_item_examples  '_ndb_item_examples.name' 
          ndb_item_examples  '_ndb_item_examples.case' 
     loop_
    _category_group.id              
    _category_group.category_id     
          ddl_group   ndb_item_examples 
          item_group  ndb_item_examples 
     save_

save__ndb_item_examples.case
    _item_description.name          '_ndb_item_examples.case' 
    _item_description.description   
;
     NDB example application of the defined data item.
;
    _item.name                      '_ndb_item_examples.case' 
    _item.category_id               ndb_item_examples 
    _item.mandatory_code            yes 
    _item_type.name                 '_ndb_item_examples.case' 
    _item_type.code                 text 
     save_

save__ndb_item_examples.detail
    _item_description.name          '_ndb_item_examples.detail' 
    _item_description.description   
;
     NDB description of an example specified in _ndb_item_example.case
;
    _item.name                      '_ndb_item_examples.detail' 
    _item.category_id               ndb_item_examples 
    _item.mandatory_code            yes 
    _item_type.name                 '_ndb_item_examples.detail' 
    _item_type.code                 text 
     save_

save__ndb_item_examples.name
    _item.name                      '_ndb_item_examples.name' 
    _item.category_id               ndb_item_examples 
    _item.mandatory_code            implicit 
    _item_type.name                 '_ndb_item_examples.name' 
    _item_type.code                 name 
     save_

