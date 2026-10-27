## `sapmachine:21-jdk-headless`

```console
$ docker pull sapmachine@sha256:f9b42f6a2b8ab857ad7c9cc4ccd6cc789c7b1917aa3559d26ddbd1e6abe24e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:e5ca6eab549de9339e7cbfee2cdea626b20317ab06bc744e91ac7e343a4a18f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248294320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ec04e5d8b6e036437d5fc5b2f06c329e059e4c4bdbdd58969c383b0c2fa56d`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:39:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b1c0f84af8f895cb3390383aea0c2c793870a96cf4a5b833cf8a6126d523b3`  
		Last Modified: Mon, 26 Oct 2026 23:40:15 GMT  
		Size: 218.5 MB (218526708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9a417079d581b30848b0af6a67b308797ea7e57862de64316909a24c517d3906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aacd7c8adb43703716208dded2d8c337f5f9ea03d6fcefa52d5f19f985c8f0c4`

```dockerfile
```

-	Layers:
	-	`sha256:a76d74b1594367c4de2ca57ce01f3bddc6e4d4a378b4eb029a754dff46b07b20`  
		Last Modified: Mon, 26 Oct 2026 23:40:11 GMT  
		Size: 2.4 MB (2358921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6951926f61a959de4d231a647ec50ca52fb14735fc3a05ce333ace08eb2e07`  
		Last Modified: Mon, 26 Oct 2026 23:40:10 GMT  
		Size: 11.0 KB (11008 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d48da3910bc303e74b4160d593b9c527bcacf1e364ee1562e5457e47c9a528c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245672674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165e3a1ae2d18806dc24f233164274d6c1091a58720a90915aefff9d614b981e`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:45:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:45:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:45:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9a3ac8a5409a538ce3d670dba176c1fa85a61942c6c66d985067bb8961064a`  
		Last Modified: Mon, 26 Oct 2026 23:45:33 GMT  
		Size: 216.7 MB (216732548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b6051bcf661275800954ec9219568d02adf4e2a4fa1d89462878bf15d3a1bdda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2370588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f83f15b3fba916530fe817f512395944b1dd92ac5bd1432ddb022397d65e05`

```dockerfile
```

-	Layers:
	-	`sha256:600ac35430efe2e9ba01ee04fff7b230ad7a1861e546887fef936d6bf8de9d0d`  
		Last Modified: Mon, 26 Oct 2026 23:45:27 GMT  
		Size: 2.4 MB (2359428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb1c3d39f29d4e12e9b54ac157f0f76644db0da539d3a9b8649679b96b6b3f8`  
		Last Modified: Mon, 26 Oct 2026 23:45:27 GMT  
		Size: 11.2 KB (11160 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e56c888574e13b64931d6701146eb99d8e55a51cd971eafec68eb6b5e12052c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252513253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab8bd9c446a783fb4bc03b5adf3f2aef12a571591580e28c245a4ad2d093b0a`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:39:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:39:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:39:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213095a5169aeae168ef08a4883b1ab4be65a14cdf981618a6368a9e92967597`  
		Last Modified: Tue, 27 Oct 2026 07:40:15 GMT  
		Size: 218.1 MB (218134945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c229262ec87e97bc501aaea1175e3933238b493e986acf66482582f334f470d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35db141f031aedabae23ee901bba65cd669f07c88237fd0613cbd91196c15fe`

```dockerfile
```

-	Layers:
	-	`sha256:095e52edde555c323689d7c49e8439326812525f1f902a738ac04284db21dd24`  
		Last Modified: Tue, 27 Oct 2026 07:40:11 GMT  
		Size: 2.4 MB (2356392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:530e8ee1e49f7abe7ef2e4531671644866e4bd403bb6b2520b48191051a0cec2`  
		Last Modified: Tue, 27 Oct 2026 07:40:11 GMT  
		Size: 11.1 KB (11076 bytes)  
		MIME: application/vnd.in-toto+json
