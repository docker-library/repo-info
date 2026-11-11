## `python:3-windowsservercore-ltsc2022`

```console
$ docker pull python@sha256:85b669bb58fe387f41f1e4c411f53d87cf6611ea32b957ea750dc06691934447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `python:3-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull python@sha256:ef9fe3cf65cbd1ba0a64ae861bc79aceb72324a388241551c191448c740b5807
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2318512187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e0f8695601a62638658d2970676cda0517d6347026ca10380fb4c10187de14`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:14:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 11 Nov 2026 22:14:49 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 11 Nov 2026 22:14:50 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Wed, 11 Nov 2026 22:15:26 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:15:27 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ef424dfaba895bf0c6c2b9e302375628dafa983e3fd708e8b0acb5b57e943`  
		Last Modified: Wed, 11 Nov 2026 21:52:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf957752df6926fd643e814b8d3b71fe2c616b3a7c31002ec6f902e97ddff8d3`  
		Last Modified: Wed, 11 Nov 2026 22:15:31 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7153404f54f57eb6026a5e84b788d2f4eec582a04f3f37e1784bb1ff9b2e2c`  
		Last Modified: Wed, 11 Nov 2026 22:15:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e887bbf50ca4a6879f621acf9573d1fd9daf357eb429a585edf83e8f73a75229`  
		Last Modified: Wed, 11 Nov 2026 22:15:31 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731b5257bfed3917d0e7eea214e31f43e85c9a07493df2f61d9c6ebc2c8f679c`  
		Last Modified: Wed, 11 Nov 2026 22:15:36 GMT  
		Size: 72.2 MB (72157812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dd7f3feec00c0abacd3871700b4d53ce196ce85040e35c7c0ac08223123a7b`  
		Last Modified: Wed, 11 Nov 2026 22:15:31 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
