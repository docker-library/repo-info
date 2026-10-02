## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:869740bab2cd7c55bb06fe91f638935c81386c361be42f8eed128ef01461be91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:c5ec15c555447cbea200e9a3e19d9b8ec97371d916dace85b9bcb011fd4e10be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186208566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e228850e5cc91bc4a37826d82139b1ad0740b6f5f11917af10ff65c53e0a152a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:31 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:31 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:32 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db8ed672c4b7d83eb426f12b73ea575195b1bb136a0d41dea41885a97a6bcbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.1 MB (7065600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bea8690faac1e3d06eb535f78f879984495e64e977ee19a5987481c035a5f09`  
		Last Modified: Fri, 02 Oct 2026 02:24:53 GMT  
		Size: 54.9 MB (54858117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2f61c55fd8db6efaf649284316f613ad4141cfbc859a77cec7f03d2c0d21a9`  
		Last Modified: Fri, 02 Oct 2026 02:24:54 GMT  
		Size: 94.5 MB (94532698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e363b73c38fe6a47799682d8d744fb9380c3c1f025d7bbcfcc29fd6aea0057`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:00d6d5c013c74d27b5d1bc4efeea2026121742e3a3691647a3899f874c1502d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d2d4991552f1a9db06505a9bc34e804e2472e3de6afd4c7448b1398593e5eb`

```dockerfile
```

-	Layers:
	-	`sha256:104da0793e7f9563f8457c3708fde90c44fb650ce79bec53620a0df7d79ca748`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 3.7 MB (3731175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce83b898d874dc9bcc2a94674067df78162b6e1693551a9540e85761d968010e`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 15.0 KB (15020 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:3d26d90c9c3726392c0d010867aede38bd0436483505ba07aba98540f44ce862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177209762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ed7317dfeb789c5072d9ee88e45d829c8042ad32cfb5c1e3ae45d197f7e55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:24:26 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENV KAPACITOR_VERSION=1.8.7
# Fri, 02 Oct 2026 02:24:34 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 02 Oct 2026 02:24:34 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 02 Oct 2026 02:24:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 02:24:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 02:24:34 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f3f8a85d754643d27b840ab4aa86bc7f05da318fa54a74ac500a67359b240c`  
		Last Modified: Fri, 02 Oct 2026 01:11:49 GMT  
		Size: 7.0 MB (7020326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2462cb33c15f4cf3e9ac4ee355c24605162e267f0e8351c02e1598bb7a6615`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 54.3 MB (54271683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fae2e0a2a4cecd5b7c7355006d087582e31a018cff2466319e8b67c31a21ae`  
		Last Modified: Fri, 02 Oct 2026 02:24:55 GMT  
		Size: 88.2 MB (88233092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6575661beeec2a7bc51e91fefc707b9952387d6cfd6bbcc17e0f675cd76606`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40146acdd63bd2f5624c5fcbdc6de826ab50d48cdc733a4e5354841e8b8b8cdb`  
		Last Modified: Fri, 02 Oct 2026 02:24:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:ec36a87d612eb7cf93ec46b5abf941dafbb8f524a1239d876adcda6dc783bb94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb8859e1016a49ff62c4d18d089f2debd2a40752b784b1c713b82460426b8c6`

```dockerfile
```

-	Layers:
	-	`sha256:cdbf269ff6761424fc356fdff08e093a11743bc73c607ffae2a850f9f16c6071`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 3.7 MB (3730649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:189a47492305936d56ce668a76d2973b9d75f322511fbcd740b4a44f3b1e473f`  
		Last Modified: Fri, 02 Oct 2026 02:24:52 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
