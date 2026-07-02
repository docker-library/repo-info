## `sapmachine:26-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:908d8809d20a9b1c7dc6e306aa2d682e29e5ad0027aed7283783d72a2e4fd9b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:1a7e29c669c8e60c790c3a6ca6615e1278ee71b9db992bf02913704fe9c98b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88353510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829dd74313481bdc110346abada5c60b16017706ea7af2156e6ceb84b7995505`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:36:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:36:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02775e4c4caac67f5770232bd10895c95cc05b1078d87ef72b6944686564d074`  
		Last Modified: Thu, 02 Jul 2026 02:36:44 GMT  
		Size: 58.6 MB (58614629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:be64e3839fe8a222cb8ca35187da15cb5e25540248f29da2ec41e9738841cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c29943a17f835b6e59a1430bed035044c3e305981eaaa545a28b0d652651be8`

```dockerfile
```

-	Layers:
	-	`sha256:591caf5243c8c1681fe4a2b000c549cb0f83dd35ceaef307fc30ac44164a78f5`  
		Last Modified: Thu, 02 Jul 2026 02:36:43 GMT  
		Size: 2.6 MB (2551817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a40f916194c69577eb281f5fd11a808821b5ff44061acea887a4f55e594a709`  
		Last Modified: Thu, 02 Jul 2026 02:36:43 GMT  
		Size: 9.4 KB (9421 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3d5343e629ab50b30b72d9bb25a6b5ebe427e8a9951343d4d2117c07074aa661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85205188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b11588963afe6675a1a16c74f74a16fa1e6f41a01b68c3ab330b904f49c50d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:35:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:35:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c223710102f26f5605def37ca90828ffc9c8bc26cece14389b9f079f9a565652`  
		Last Modified: Thu, 02 Jul 2026 02:35:55 GMT  
		Size: 57.6 MB (57592004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a211dee29abd962d948777ba2cbcc987f8dfc73cb8e1d75c4b2c3e9dbc4299f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7646556903811ebd9e6053864df5b61958a50479248c7e44a4575e2d0f0167c0`

```dockerfile
```

-	Layers:
	-	`sha256:6d47dfd0f5175ac601589877d4b5cf8f4e41b05bb097b33a30dd2165725d169c`  
		Last Modified: Thu, 02 Jul 2026 02:35:53 GMT  
		Size: 2.6 MB (2551520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c9f6a7b179c6adac556527cd49cfff735ac92d0f995fa814e615cd2e1c86e5`  
		Last Modified: Thu, 02 Jul 2026 02:35:52 GMT  
		Size: 9.5 KB (9549 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a5babdfd00f51e5c74f3c348e5faf6ed679e33f5fa82af4303650a4c38cd2629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94337894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac079fe8c341da1323a8172cbc399c23a48743810199779a59290bb61ecf27d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:26:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:26:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 03:26:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9be9a8d494c9beef835fce313c2cbe995b273d8d5b40437c9d5ec3db0a04f`  
		Last Modified: Thu, 02 Jul 2026 03:27:20 GMT  
		Size: 59.7 MB (59696026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:493ff76137d80a988436b05f20c4aefe40934099b186cf27e7ec9ad9a14a0094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a97d1c15b52b1e7ee797abdbb675a25ea2a4f35bbacc3898e7f5a20155158c3`

```dockerfile
```

-	Layers:
	-	`sha256:6630efe309148adfc833281936885fa3d0016287583de73f2ebb8104a1777f4b`  
		Last Modified: Thu, 02 Jul 2026 03:27:18 GMT  
		Size: 2.6 MB (2550731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17730ba72a7def45bd831ea8cc62d66a6748031c80e8474b907b787d7014a949`  
		Last Modified: Thu, 02 Jul 2026 03:27:18 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
