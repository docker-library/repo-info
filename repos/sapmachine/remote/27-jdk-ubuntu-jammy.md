## `sapmachine:27-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:7b3aa85ccf60611e04aef5c73f68df460843f97bf69d9f30bc247697ce83d4d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:5278eec436edeff93b0ac28c0e59c79b69630c2e6f074ad61e07bbfd9e328dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169032483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181879bb5975f86894e13ee80043374c5115fa8673bc324a8dff7d2764a7a2a8`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2966a3feff6bde36babf936ef7785020c8019329788cd693114b6efc9345da89`  
		Last Modified: Mon, 26 Oct 2026 23:38:57 GMT  
		Size: 139.3 MB (139279995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8c5818dd13ce44939db532aae4493da963059eb65481c2411e8d4b5cb86df5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0104a9093c69db2020882f896ad73bf85329c32bf896444306a0a28224087de5`

```dockerfile
```

-	Layers:
	-	`sha256:cdff1225278f977cf245d1b7d1dbad0233d411ff01efd1a019280756f5ceccd3`  
		Last Modified: Mon, 26 Oct 2026 23:38:54 GMT  
		Size: 2.6 MB (2575932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9f21a812916116b9bc976071254a56174705255b19f8ba3e9950744d227dcaf`  
		Last Modified: Mon, 26 Oct 2026 23:38:53 GMT  
		Size: 12.1 KB (12147 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:56504edf3526803340b6a1a199fedac036534ed89bf4e0996ac02f067c278746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166015160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d250a3d93ef5fe5fcd3508e15cf85aa748e7ab9858ca9fd8b5f20f3d383758ba`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:43:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b65c828e1310ab8e45be99ef6de06966a955ba8ac6bebb0d0c4e89bcbe78e8`  
		Last Modified: Mon, 26 Oct 2026 23:44:08 GMT  
		Size: 138.3 MB (138330553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:090961a60d8dab80d9dc6fb68fec3687df80e1f90f88062420cac7e8b5d50361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a1731c1b17b895eb87aeeb156239fcd462d636d6e9ca301722436f699642df`

```dockerfile
```

-	Layers:
	-	`sha256:d4e3030a47844284fce5dcc8e2cf02377f2290f81d095939827f78a94e35fb65`  
		Last Modified: Mon, 26 Oct 2026 23:44:05 GMT  
		Size: 2.6 MB (2575707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07608685a9b64ca6174857dce4978851d546099e75855054dc36c950b026357e`  
		Last Modified: Mon, 26 Oct 2026 23:44:05 GMT  
		Size: 12.3 KB (12348 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:06064006827952338c44064947dee3db8766466ed7dc45ef306ed9d29954d10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173182573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58dd7dbb92fff2bb984081dac978932a8dcde0af18853bf97b11edf3a5f3cbf`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:29:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:29:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:29:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d849a03ea9af985c7f71436f315044460a10e73997701ce4f6e91532e9803907`  
		Last Modified: Tue, 27 Oct 2026 07:29:46 GMT  
		Size: 138.5 MB (138478640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:970415cfa2b7414a5868c23ab77b755f9f3e1da926a5a904c16cee21335e6241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fb5207dd5685cec9d2f00a6f49a1848c6e6b9adf5f90756b5bbaed8f6054bf`

```dockerfile
```

-	Layers:
	-	`sha256:0a5a0badf6403cf973978c8f8bc30e253c966dcce4a9c33e3a75d57506e756df`  
		Last Modified: Tue, 27 Oct 2026 07:29:43 GMT  
		Size: 2.6 MB (2574882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:390444099a1eeea3cfb62d51de313b2815bbf6f40c4346536106d4b938e69ab1`  
		Last Modified: Tue, 27 Oct 2026 07:29:43 GMT  
		Size: 12.2 KB (12239 bytes)  
		MIME: application/vnd.in-toto+json
