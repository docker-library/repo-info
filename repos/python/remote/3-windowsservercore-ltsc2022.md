## `python:3-windowsservercore-ltsc2022`

```console
$ docker pull python@sha256:3b111f0f3bfb28d3fcb1ace7fed1973a024ba6d20ea2b376958e8ce865a451c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `python:3-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull python@sha256:7fbee8511cbde4b18da19e32095be5ce2d48ee9c4d85d5fa1159db89fe2e38bc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2291479144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8541340060ed08370f764e1220df9de650378c0637f0d925017a6e0fa0b7e4fa`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 22:27:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Oct 2026 22:27:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 12 Oct 2026 22:27:50 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:27:51 GMT
ENV PYTHON_SHA256=67d9a63eb145a34aa939f02eadbf8c57f21fcdd6decb901ccac578d2d1f01d6f
# Mon, 12 Oct 2026 22:29:49 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 12 Oct 2026 22:29:49 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b49dad6c6ac4cfaf36ed7ebeae5ee7c00fd5e492450d3cb464b449b2959091`  
		Last Modified: Mon, 12 Oct 2026 22:29:58 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082414b29776054aa21b97476c0e498e0c653b1de61fbb625da5b4281c937406`  
		Last Modified: Mon, 12 Oct 2026 22:29:57 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ddd1d560740930c4201abdc674db2545e873559106f01748788593e900990a`  
		Last Modified: Mon, 12 Oct 2026 22:29:57 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fa7068422d23c65b2f1e7fb61bbca7a6c28f9035bcefe8f33ecbd52e001979`  
		Last Modified: Mon, 12 Oct 2026 22:29:57 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea999e6566bf7a9a598c0cbefec0e8bbdf1c37a8e39e105b4a88f083041c3ea`  
		Last Modified: Mon, 12 Oct 2026 22:30:02 GMT  
		Size: 72.0 MB (71983918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae965f7eb6e34b351cb4006b5981ef2b1136436a41f8a86709e774868bbbf518`  
		Last Modified: Mon, 12 Oct 2026 22:29:57 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
