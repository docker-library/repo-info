## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:058826592fef490b7f998fa371f42958495e2c68e700c362cebb405d646352b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:b7ef68376a9a3fdf75331c130522f356aa0566d05e66dc781597985d0ba2137e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198727593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b934d18d95edbb0b59e256879865da4162b403740dc470a979d74c350e7a823d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:22:42 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:22:42 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:22:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b383563932bef083085f2fa2d907008bb74b8715602d9ae8aa8989ffc1da649`  
		Last Modified: Fri, 20 Nov 2026 04:23:02 GMT  
		Size: 55.8 MB (55780386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f1c638cc5ef36636c182d8ed98b9db3e2ee4a866ca010920504e0e129da1c6`  
		Last Modified: Fri, 20 Nov 2026 04:23:04 GMT  
		Size: 105.8 MB (105809852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f4c100aa75d51b3feaa03d8ee8317103335587874c19b485c798dba08c9dc8`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19eec79c1de7648249b80b0e5b2ae40eeaceb3da4875624ecc1681e88811299b`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1d32630fdf1c20827eeb84d178d22fbd4c9a92418e8a0aab29a8f449dcb278d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac393ed9fc85b570650346be1a1a7cb548262292ab79079b8617b7a386306d7`

```dockerfile
```

-	Layers:
	-	`sha256:03c7336d07c93dae454a19b35c49180f01ea91dd0b3287bc01b39265acf25620`  
		Last Modified: Fri, 20 Nov 2026 04:23:01 GMT  
		Size: 3.7 MB (3738873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79efab25d4aaa0d222fa3f348acbff889c90660437d7efe7a418d709d2fe859`  
		Last Modified: Fri, 20 Nov 2026 04:23:00 GMT  
		Size: 15.0 KB (15023 bytes)  
		MIME: application/vnd.in-toto+json

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:827cdb37d62bca0e24c8adde5c54913fcf157e3dab4cdbfb39709f434c6b2ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188671744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa02fe7a098065662572939a7977c8b6d66162949876c5792f0e80d910570b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:23:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV KAPACITOR_VERSION=1.8.9
# Fri, 20 Nov 2026 04:23:19 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     rm -rf "$GNUPGHOME" &&     dpkg -i kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb &&     gpgconf --kill all &&     rm -f kapacitor_${KAPACITOR_VERSION}-1_${ARCH}.deb* # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY kapacitor.conf /etc/kapacitor/kapacitor.conf # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
EXPOSE map[9092/tcp:{}]
# Fri, 20 Nov 2026 04:23:19 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 20 Nov 2026 04:23:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5759654418e883df1f52008cd4c9760c393afabae4c0cd6d01a720da358b85`  
		Last Modified: Fri, 20 Nov 2026 04:23:41 GMT  
		Size: 55.3 MB (55257610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ce27b3958c2783676b9f3c150118e08430a4d56f200f7ad37874da161cc856`  
		Last Modified: Fri, 20 Nov 2026 04:23:42 GMT  
		Size: 98.4 MB (98390282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ce76180bacf6a6064b95fbe78fc22190d0ecfac718604f62505ff8969443c5`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705b1033663d5aa7c4e765849d1341d4d709d33ea2e47af63124e22f2b0395dd`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kapacitor:latest` - unknown; unknown

```console
$ docker pull kapacitor@sha256:1a742981d442fbc29ddc33d59278e62bd164f92d8af7d000eef93dec739fa534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e04d02fcf3e8441319b0610a3b650ee55832c1b8474a449273ee31784fbdd1`

```dockerfile
```

-	Layers:
	-	`sha256:8db30baf8b6a3edd9b9489acbfd29459541cde34f1ffe8b028f90821a5a167c1`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 3.7 MB (3738093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd1c8bf1c33c3b2d42632de6484b43552d2130b2961e932a1a1bc9b6225353a3`  
		Last Modified: Fri, 20 Nov 2026 04:23:39 GMT  
		Size: 15.1 KB (15127 bytes)  
		MIME: application/vnd.in-toto+json
