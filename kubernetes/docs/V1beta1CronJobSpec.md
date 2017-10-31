# Kubernetes::V1beta1CronJobSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**concurrency_policy** | **String** | Specifies how to treat concurrent executions of a Job. Defaults to Allow. | [optional] 
**failed_jobs_history_limit** | **Integer** | The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1. | [optional] 
**job_template** | [**V1beta1JobTemplateSpec**](V1beta1JobTemplateSpec.md) | Specifies the job that will be created when executing a CronJob. | 
**schedule** | **String** | The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron. | 
**starting_deadline_seconds** | **Integer** | Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones. | [optional] 
**successful_jobs_history_limit** | **Integer** | The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3. | [optional] 
**suspend** | **BOOLEAN** | This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false. | [optional] 


