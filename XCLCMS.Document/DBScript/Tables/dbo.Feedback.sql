CREATE TABLE [dbo].[Feedback]
(
[FeedbackID] [bigint] NOT NULL,
[FeedbackType] [char] (3) COLLATE Chinese_PRC_CI_AS NOT NULL,
[Title] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[Contents] [nvarchar] (2000) COLLATE Chinese_PRC_CI_AS NULL,
[NickName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[Email] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[QQ] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[Tel] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[OtherContact] [nvarchar] (500) COLLATE Chinese_PRC_CI_AS NULL,
[Remark] [nvarchar] (500) COLLATE Chinese_PRC_CI_AS NULL,
[RecordState] [char] (1) COLLATE Chinese_PRC_CI_AS NOT NULL,
[CreateTime] [datetime] NOT NULL,
[CreaterID] [bigint] NOT NULL,
[CreaterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[UpdateTime] [datetime] NOT NULL,
[UpdaterID] [bigint] NOT NULL,
[UpdaterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback] ADD CONSTRAINT [PK_FEEDBACK] PRIMARY KEY CLUSTERED  ([FeedbackID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Title] ON [dbo].[Feedback] ([Title]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '建议反馈表', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '内容', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'Contents'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建者ID', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'CreaterID'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建者名', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'CreaterName'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建时间', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'CreateTime'
GO
EXEC sp_addextendedproperty N'MS_Description', '电子邮件', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'FeedbackID', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'FeedbackID'
GO
EXEC sp_addextendedproperty N'MS_Description', '反馈类型(FeedbackTypeEnum)', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'FeedbackType'
GO
EXEC sp_addextendedproperty N'MS_Description', '昵称', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'NickName'
GO
EXEC sp_addextendedproperty N'MS_Description', '其它联系方式', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'OtherContact'
GO
EXEC sp_addextendedproperty N'MS_Description', 'QQ', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'QQ'
GO
EXEC sp_addextendedproperty N'MS_Description', '记录状态(RecordStateEnum)', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'RecordState'
GO
EXEC sp_addextendedproperty N'MS_Description', '备注', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'Remark'
GO
EXEC sp_addextendedproperty N'MS_Description', '手机号', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'Tel'
GO
EXEC sp_addextendedproperty N'MS_Description', '标题', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'Title'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新人ID', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'UpdaterID'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新人名', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'UpdaterName'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新时间', 'SCHEMA', N'dbo', 'TABLE', N'Feedback', 'COLUMN', N'UpdateTime'
GO
