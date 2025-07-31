-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Configure Access to Cloud Storage via Unity Catalog

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Access Cloud Storage

-- COMMAND ----------

-- MAGIC %fs ls 'abfss://demo@deasatyastoragedl.dfs.core.windows.net/'

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Create External Location

-- COMMAND ----------

create external location if not exists demo_ext_loc
url 'abfss://demo@deasatyastoragedl.dfs.core.windows.net/'
with (storage credential `deasatyastorage-sc`)
    COMMENT 'External Location for Demo Purposes'

