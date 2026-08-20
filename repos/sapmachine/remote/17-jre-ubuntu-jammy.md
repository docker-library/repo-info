## `sapmachine:17-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:072fc2589bc4b68729e643c05aea3d8c6213732cd1800c7f42cfa566345ae78e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:d9863e9d4491da9f31a18a06add65131ae43c0c83bcfb7d69bcfdc04717f9158
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87373014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17737078f0f4f61fa4c50d68330c9ff0df3f19cdfaf9e24b9bbed8eeb37711ec`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:08:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:08:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:08:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07469d0d12440c87ed775c1ebee58bbd6bba068c9f392e754a0b36ef852b3749`  
		Last Modified: Thu, 20 Aug 2026 18:08:33 GMT  
		Size: 57.6 MB (57636071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8fd5ea18e86b5cbcbc58a0d4ee6b130eec5efe1d56b839e6aafdb20ca38eba1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:befe05d492000247ef226e84bb568c8b899b17f930fe200bdce5859d6e35805a`

```dockerfile
```

-	Layers:
	-	`sha256:464db63b7d23c9fef3b3f87cc092e3a78d05d79d22a91c8408f81186d3b41183`  
		Last Modified: Thu, 20 Aug 2026 18:08:32 GMT  
		Size: 2.5 MB (2546945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98fb13a5c006df81265c90828e889066a0dfca37a4480543c1c4a039c4e3386d`  
		Last Modified: Thu, 20 Aug 2026 18:08:32 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9c8197aaada93dbec1f03fe5ec9c88c525b15c4d9c01a1813f9cba509a4caf0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84688509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe9e4254878577fc3a83e546d918e476338a337d2455cc64486f73e057dfe6c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:04:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:04:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:04:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fae93867bd3e9a002682fec6d4080eeee91807116db2ab789936ef0f977fcfa`  
		Last Modified: Thu, 20 Aug 2026 18:05:06 GMT  
		Size: 57.1 MB (57068056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aa5b7b9d27759e2278d98a13bcdbe3c69022174fdd00b80bdea4fe4e6da56c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adaadd5bf33e97920aefdfea69502c2c83be0b2479995082766f2cb2d85f592a`

```dockerfile
```

-	Layers:
	-	`sha256:879432a8d4a347dec39fab17f6b7faaae8ac2f5c344306d24d37afa2c0e0e501`  
		Last Modified: Thu, 20 Aug 2026 18:05:05 GMT  
		Size: 2.5 MB (2546627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ba8c4a993caf7ed65d9a6ff21227e277d69a507fec38d9165d212b009b41490`  
		Last Modified: Thu, 20 Aug 2026 18:05:04 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f3e626a4ab5041cecbdf1c3425b1fd68f2978913d8181f6b19720a8ce70e5287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91696894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41cce3075e33be16103982a0d5c5f5b4fe20e1d75db9894b4d3458577f9c822`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:20:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:20:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 20 Aug 2026 18:20:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0554850191d3df842408ce0440d1d6c723ed9a55f196a97e73e6ec8d24231ca8`  
		Last Modified: Thu, 20 Aug 2026 18:20:52 GMT  
		Size: 57.1 MB (57058749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a57c9282ba0b2bec1f8a142eea5cf17e461a278335bb34a81f1a97264992ac54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fcffc6cdaf2be3cd8daa04e8b95813d4d9b863eae765d5f798ce3da5194973`

```dockerfile
```

-	Layers:
	-	`sha256:04f787a9f8be4878d1fe205b62aaf5665f5cdfd011a5b7f144103c4494e4cd3b`  
		Last Modified: Thu, 20 Aug 2026 18:20:50 GMT  
		Size: 2.5 MB (2546477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18d429938f09011f63b684a087a583c30238561cc3c519cb49b0af7174a13d7`  
		Last Modified: Thu, 20 Aug 2026 18:20:49 GMT  
		Size: 9.6 KB (9566 bytes)  
		MIME: application/vnd.in-toto+json
