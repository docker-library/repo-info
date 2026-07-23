## `azul-zulu:17-jre`

```console
$ docker pull azul-zulu@sha256:c8394c18a4b933a98f784a1414c6e28ddead2fb25b50e2c8b689ba0c4c33e8d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e2b2c71c4f9b61602edfe06c41ba3fda45dcad6876eac0a4d3c88038062e54b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100927890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff15bf09ab9a1c7fb0ffc1fd758beeeded155eca7ed228efe55163037a05674c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:34 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:34 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7baba717de271cee50fa17908ac7a2a853a117d0ee6f406af6e0b6df1a471dab`  
		Last Modified: Thu, 23 Jul 2026 22:29:47 GMT  
		Size: 71.1 MB (71146985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5df1e6245755f055d42df21414c5e351e0735ca0fd695255d84b23e9207d15c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702dedb8aee01fcd73feb1ba0ae04029ee63faebce8871b1cb46ff15e0424d22`

```dockerfile
```

-	Layers:
	-	`sha256:4fa7b3a74c90336df2d870de52509828d3c6a41122bd20649ccb009fd26c7086`  
		Last Modified: Thu, 23 Jul 2026 22:29:45 GMT  
		Size: 9.2 KB (9190 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:63fada1e6438acb7cd4808751a685bbbb8d9b2b9c56b7098cbc8b93c0e858303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101298817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be1a772971124d076f0be2128ae3fdc69c2f86590c03ae92273cf282ac342e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:35 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:35 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ec95126f967f53cc4331da991768c4aea064dfb8ac32791c4698b2feb0f3ac`  
		Last Modified: Thu, 23 Jul 2026 22:30:47 GMT  
		Size: 71.2 MB (71155112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:956fee1344119ff8569bb4a5ae38b414ffb6314bab09c89da1af8d0b4e20b96a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df51473d2a58ba3e0376d10ff13fd6099718a165d138764e0eb4e712a8b822b2`

```dockerfile
```

-	Layers:
	-	`sha256:2f3aec4fea7daafe6286bc149707b0dbcce526c8f05f35933b5054fbce2e4ea8`  
		Last Modified: Thu, 23 Jul 2026 22:30:45 GMT  
		Size: 9.3 KB (9294 bytes)  
		MIME: application/vnd.in-toto+json
