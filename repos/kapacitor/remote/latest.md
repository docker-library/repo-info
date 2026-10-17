## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:4e939083f8d750800942611b136795f2b8dd05455da2c9b9c9fe329e38d89f18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:842a8aa96c4ce0e077c69ef0a18d531c1f86b1736b0b3b24f36604951c53aba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186535596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d9cf3760e1b89e825f0ec32f8f63d83f54f378a1f1793cfcc17dfdb6f64f51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:22 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:22 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:22 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4bd2e1cf8d1673ed087d13e7d4484e4202ae74747f4712409ed1e6adfb72f2`  
		Last Modified: Sat, 17 Oct 2026 00:12:10 GMT  
		Size: 7.1 MB (7069053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d905493090df18f13b5bc44007ee2c9136b21ad1a6c32f6837fa2924cd8238b5`  
		Last Modified: Sat, 17 Oct 2026 01:26:44 GMT  
		Size: 55.1 MB (55142645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132408668eae5329142d79b13f0de5553de252ec46b01fd1756f576f391fc5b9`  
		Last Modified: Sat, 17 Oct 2026 01:26:45 GMT  
		Size: 94.6 MB (94570898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faba968b7feb339c971bd915e9642962afe8801deff72099dc85c28cf2afded9`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5487f9a70b2732228b469a9e7d2b79114e11ca3e4671af6d34a62e9ca81017c4`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:42ffa800f2cc05823d58ff6622cce1660908ed29c60662eb2ae05dcfed13c207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f866f1571be9eea8ee1aac4d2bbcd8733fbc9b639f41d86114a8565cc0c12a2`

```dockerfile
```

-	Layers:
	-	`sha256:09412fd29487fd99ff9b29dedaf1e76247a14fe735cc5f189d17aaa7b855cfda`  
		Last Modified: Sat, 17 Oct 2026 01:26:42 GMT  
		Size: 3.7 MB (3729272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3067450e362fe3c8fab0810e741dca8983a610ebd408f42ae437125c023fc37`  
		Last Modified: Sat, 17 Oct 2026 01:26:41 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6a38271c7b7363a087e0756b208bdf974813fef1c6db7437f5e17c3fe3c400db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177670892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8cba82d122c825446041d127ad06e946ea866fc9d715cab070b6aa8f5a503b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:26:44 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
ENV KAPACITOR_VERSION=1.8.8
# Sat, 17 Oct 2026 01:26:48 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Sat, 17 Oct 2026 01:26:48 GMT
EXPOSE map[9092/tcp:{}]
# Sat, 17 Oct 2026 01:26:48 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 17 Oct 2026 01:26:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 01:26:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Oct 2026 01:26:49 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b95774da1dbe68bb0136b29920ab4d48aea1373113a4ef80d7a8fb7e68edbba`  
		Last Modified: Sat, 17 Oct 2026 00:12:05 GMT  
		Size: 7.0 MB (7022101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c8f17afe922286d4acf9071e6ca1c8aa6462eb37c10c24ea3d7601989c6ae1`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 54.6 MB (54580980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57378d942af8c5921b4531c1c4c193d9a6542ba471d2672e1e4abf583f72e77f`  
		Last Modified: Sat, 17 Oct 2026 01:27:10 GMT  
		Size: 88.4 MB (88382565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080501d881a6ac61ecbd099cb5320e49796395747a01e68e0d499547464b2739`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0573d0f37cfef23f6aeaafd138686b93d2dfc2dc82c104406f6628f8311727`  
		Last Modified: Sat, 17 Oct 2026 01:27:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:82a82bbb875c8dd688375606949cfc1232c0560c19c18f2122a92e29c869c39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3743873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b37b6977ec01de34e470e31021de399ff3969fd62b53fba916d098ed4fe1`

```dockerfile
```

-	Layers:
	-	`sha256:16fc88ec1fce96c84afdf2209454994c494fd9b62de6a6373549e57674dd6a1f`  
		Last Modified: Sat, 17 Oct 2026 01:27:08 GMT  
		Size: 3.7 MB (3728746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8165c89bbfc51c7cdd277869305a2d1c344a75dbba8e8cb3addca8704228184b`  
		Last Modified: Sat, 17 Oct 2026 01:27:07 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
