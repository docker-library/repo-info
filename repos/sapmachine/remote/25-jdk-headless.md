## `sapmachine:25-jdk-headless`

```console
$ docker pull sapmachine@sha256:655392a4917ba0513417669cf978c6e1111090b7fe30dccbe77548296f93ebc0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:cf9d7b5396a1d9facfec4d11c694b529b7599a2bd2b0e547f301aa53cb6e6957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253036946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0dc9e1ebb946cb4d1b4805ed58eef8b9e343e30d194ddd580dd72c42a20234`
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
# Mon, 26 Oct 2026 23:39:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91468b952bc2774ef247acb5859fe13d53a9813f40a9ca9ecd8bb133de31b56`  
		Last Modified: Mon, 26 Oct 2026 23:39:30 GMT  
		Size: 223.3 MB (223269334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:44f8db1182eec4337d568529cad5de8cf91c3dc1faabd8692dbb037b46bccfa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18054517b7ba312e5cd9c30018e26ac3114548503f61cc11d90c33f084097d38`

```dockerfile
```

-	Layers:
	-	`sha256:37fc39ec1ac52614caf6951909b70b32f4370345468edf3ead4eda52adb20bc2`  
		Last Modified: Mon, 26 Oct 2026 23:39:26 GMT  
		Size: 2.3 MB (2348143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:100413c149f7a4155ac7efa3810ff03b34f55928e2009d8d2edff24253b51931`  
		Last Modified: Mon, 26 Oct 2026 23:39:26 GMT  
		Size: 12.0 KB (12043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:01412d9bc2df3a47870c05d1ed6347a705cafe5f2e978105b2a4898bb02550ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249959884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad69ad23cf6243426bf60ba2a8977f1315b8bd4e605476a3971f692dccda70f`
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
# Mon, 26 Oct 2026 23:43:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:43:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8dc1cd29875913ae5457f3e070e574b20d16b9887f75ff4a653c9339d44987`  
		Last Modified: Mon, 26 Oct 2026 23:44:21 GMT  
		Size: 221.0 MB (221019758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:91ed7e8b6cb22d74c737d707e8ba8e336c07bcc55c91f288bb3c95c1bd36a25b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:019ac5c5684757dbd169d443077805008c4a672476a71a762ca5efc0097ad2fb`

```dockerfile
```

-	Layers:
	-	`sha256:8933acabdc5e8f5240064f1685b428b4034013f0a111b792f77a44836d54182a`  
		Last Modified: Mon, 26 Oct 2026 23:44:16 GMT  
		Size: 2.3 MB (2348683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79f8eb2e7ace490889d2a1feff9a96dd881a535c3d0e2adc30bccf56484ae946`  
		Last Modified: Mon, 26 Oct 2026 23:44:16 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:356f9fb35e56e54a2ba86b106d062d10deb2a8272eec5ede34df421a31571afb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254096967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf0c75800a39ea55c87916d1ae30443240072b3e85fdf69a17a11b48aceb5b1`
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
# Tue, 27 Oct 2026 07:31:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:31:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:31:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037f65f4c95ba11cb2be09fa1659f2739c2e6562cb86ede4e32a8e7a1783abf8`  
		Last Modified: Tue, 27 Oct 2026 07:32:55 GMT  
		Size: 219.7 MB (219718659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6f25f533922762929a50e0149a9d04cff0915c584149c5eb3136c1ec47b4d93e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e86f8298dec30fafb24916e3472916d4d06261db89e8ac8a3b792b5444fcba55`

```dockerfile
```

-	Layers:
	-	`sha256:6e444ceec677d48c2903d212062d2f5456fc82dada73d506dcab5b5483015747`  
		Last Modified: Tue, 27 Oct 2026 07:32:50 GMT  
		Size: 2.3 MB (2345014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:403c25b27fa02c9b31af3270e165937241983a51e12f7d735af8f34542e10e08`  
		Last Modified: Tue, 27 Oct 2026 07:32:50 GMT  
		Size: 12.1 KB (12128 bytes)  
		MIME: application/vnd.in-toto+json
