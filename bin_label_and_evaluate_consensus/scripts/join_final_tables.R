#print('1')
prokka = read.table(snakemake@input[[1]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('2')
quast = read.table(snakemake@input[[2]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('3')
checkm = read.table(snakemake@input[[3]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('4')
trna = read.table(snakemake@input[[4]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('5')
rrna = read.table(snakemake@input[[5]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('6')
classify = read.table(snakemake@input[[6]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('7')
coverage = read.table(snakemake@input[[7]], sep = '\t', header = T, comment.char = '', quote = '', row.names = NULL)
#print('8')

out = prokka

out = merge(out, quast, all.x = T)
out = merge(out, checkm, all.x = T)
out = merge(out, trna, all.x = T)
out = merge(out, rrna, all.x = T)
out = merge(out, classify, all.x = T)
out = merge(out, coverage, all.x = T)

out[is.na(out)] = 0

write.table(out, snakemake@output[[1]], sep = "\t", quote = F, row.names = F)
