CREATE TABLE [dbo].[ArticleType]
(
[FK_ArticleID] [bigint] NOT NULL,
[FK_TypeID] [bigint] NOT NULL,
[RecordState] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL,
[CreateTime] [datetime] NOT NULL,
[CreaterID] [bigint] NOT NULL,
[CreaterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[UpdateTime] [datetime] NOT NULL,
[UpdaterID] [bigint] NOT NULL,
[UpdaterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '文章类别关系表', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '创建者ID', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'CreaterID'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建者名', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'CreaterName'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建时间', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'CreateTime'
GO
EXEC sp_addextendedproperty N'MS_Description', '文章 ID', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'FK_ArticleID'
GO
EXEC sp_addextendedproperty N'MS_Description', '分类ID', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'FK_TypeID'
GO
EXEC sp_addextendedproperty N'MS_Description', '记录状态(RecordStateEnum)', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'RecordState'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新人ID', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'UpdaterID'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新人名', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'UpdaterName'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新时间', 'SCHEMA', N'dbo', 'TABLE', N'ArticleType', 'COLUMN', N'UpdateTime'
GO
