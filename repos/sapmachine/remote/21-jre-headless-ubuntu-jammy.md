## `sapmachine:21-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:05d2737f4cc88eb274bc1362be54090c7eb1fa5f6c394d432f1637346046d8ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:cbd019663bfeb9e6ba31182173042656018f2c7d621ce8f0f7f11b80415f3d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91725787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b559eeeea875082c1a17316c6c6e1c676bc95c35d104e4e8f57d1c3201deb8`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:39:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:39:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e8a8a5325bfcf63705ad16acfe4109638c73cc12114a1e7e8fcf67c1aba652`  
		Last Modified: Mon, 26 Oct 2026 23:39:55 GMT  
		Size: 62.0 MB (61973299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c1889544129f0ce1ba72254403de4d4153d13d09ed9cd9c3d2c6bcf446a93d3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0987bd0ae4c2a11d8d47186a8a3f30e9ff78eaeaaa906b3008f6f1e4117b2ce8`

```dockerfile
```

-	Layers:
	-	`sha256:d6d5d0c0ef0104fbc03558f635f1c80c3f94a63ee3ff518dac58302bd9b21601`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 2.3 MB (2296661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eddbdba9eec58670e99e39aa7dd454ecef3cb30001d449438f40ccddf1968b8`  
		Last Modified: Mon, 26 Oct 2026 23:39:53 GMT  
		Size: 9.6 KB (9647 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6849f8c86ec981b1385ce2ee7139af6795ee6f1c2f29b71f89bdd88fa2de1cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88822734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f411bc5d61bfaf7c8d16b332d8aec0670bfe9f333c2934073eb11ba5cc884c25`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:44:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:44:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25acf016a98f2431c55cc9e0befc23d32794131449d4ccd7a026ee7879b529ef`  
		Last Modified: Mon, 26 Oct 2026 23:45:13 GMT  
		Size: 61.1 MB (61138127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d0235443cfdf7d767c53ffc458270bc3870494194c054b1d1eb97cd670bcb553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22848c7676560b98913216a20385be0001a7bfb5446669dc809b4aef9ea2ec2a`

```dockerfile
```

-	Layers:
	-	`sha256:fbb8d99f0dba8e40fb9d2ce0fb3283ac8de6cae122d9d14e29d7593ca45ebc60`  
		Last Modified: Mon, 26 Oct 2026 23:45:12 GMT  
		Size: 2.3 MB (2296333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bb526f0565480826bac75d3a232b5c38a90a2d32ed3866e3e4138f948593474`  
		Last Modified: Mon, 26 Oct 2026 23:45:11 GMT  
		Size: 9.8 KB (9751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:23f5a2b41110dc5bf90e50d8abaa13105a3b4fa1f5f5dc94b267cb4053aafd76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96171911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37142c0352b8830ecf48607e02c7492b49b9434cffc75d9c7afd42d9bdf7d9f7`
-	Default Command: `["bash"]`

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
# Tue, 27 Oct 2026 07:41:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:41:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:41:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ac4bdeb702c92af77e19a09386d7f780d9cf29c7b80a0ec43675ea0a6bdfc4`  
		Last Modified: Tue, 27 Oct 2026 07:42:06 GMT  
		Size: 61.5 MB (61467978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:16e6227960022bb683497cdb622a379b82e5c411066d0a0bf011dba2387278ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a8edc522f720e748ffd706d2197cd69b7f8ca6a7d9150af880116956f6b416`

```dockerfile
```

-	Layers:
	-	`sha256:f33269ad567b5b42793fa856e3a6c042dad5ecee1131f216292185307774cca8`  
		Last Modified: Tue, 27 Oct 2026 07:42:04 GMT  
		Size: 2.3 MB (2296103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ec3b120803595f3829724069ea4122ac2f4ae40d401768cc810a5352fc427ae`  
		Last Modified: Tue, 27 Oct 2026 07:42:04 GMT  
		Size: 9.7 KB (9691 bytes)  
		MIME: application/vnd.in-toto+json
