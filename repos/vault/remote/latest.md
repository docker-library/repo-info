## `vault:latest`

```console
$ docker pull vault@sha256:403c4cdc39091f58dd804133b8f1f3cc933e1a3929bd64eab50443d4557e3ee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:d07c440e2c72619029303b934ba944cbc93d240db1ae0541435fffc040d7a0d2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85920062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6e5f7da7cfd31a28e48a22d217aa1ed11593a9a4b9823e063fb08b930c02f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:01:03 GMT
ARG VAULT_VERSION=1.12.2
# Mon, 05 Dec 2022 21:01:03 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:01:12 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:01:12 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:01:13 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:01:13 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:01:13 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:01:13 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:01:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:01:13 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc3da2963fbd65f053128fd10a33302089d5752d7b6903f9263e29756133b1`  
		Last Modified: Mon, 05 Dec 2022 21:01:54 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa164a81be526cf9d56b5ec981a71ef2ab76511384deea6128aeb8a7d055b07`  
		Last Modified: Mon, 05 Dec 2022 21:02:03 GMT  
		Size: 83.1 MB (83089305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bcdccaa12c2b33f4aeea1569e00986322d4d2a9a5de950ec9e41647a7e2055`  
		Last Modified: Mon, 05 Dec 2022 21:01:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d703a9d985f86066ea2b9489a6d0d497540809bc3e96f5ab919447b77c4d46`  
		Last Modified: Mon, 05 Dec 2022 21:01:54 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:207fc0ee6952deb21f19c1aff2f5a5d92e8fd9ba83f8d0785a815bf6f0991abc
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80633372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3016869d6bade3c40adfddd2f4d6c2a6b7d8f3433b42a3aab6f98e00b39d575e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:08:19 GMT
ARG VAULT_VERSION=1.12.2
# Mon, 05 Dec 2022 21:08:20 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:08:31 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:08:33 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:08:33 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:08:33 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:08:33 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:08:33 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:08:34 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3620b5f4c8a213067f73e49d06997b7b802922bfe3a0c697afb293cbf16485e7`  
		Last Modified: Mon, 05 Dec 2022 21:09:34 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9561db60f9aaff2ff6ae623fcd2a72aa8b2a40ef41dc433c0414bd94b6486c4c`  
		Last Modified: Mon, 05 Dec 2022 21:09:46 GMT  
		Size: 78.0 MB (77994663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc169ea9a29328bfa0dd97643cfbfb74a5282a2b8919ddcc6a8eb348bda587d`  
		Last Modified: Mon, 05 Dec 2022 21:09:34 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d7b39cafcb0f6d142d36f65a46586a869568aa56be2e4f38cdb8705ef27d4a`  
		Last Modified: Mon, 05 Dec 2022 21:09:34 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:14525dc124826eb71d7ea389cf4a8718d8d7c8bf0625984ac02177a6ddaa7390
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (80973885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf33d9d8966192bde4c4059f50795fd8b7454af8a4a512cb4d896c5b10652b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:34:03 GMT
ARG VAULT_VERSION=1.12.2
# Mon, 05 Dec 2022 21:34:03 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:34:11 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:34:13 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:34:13 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:34:13 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:34:13 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:34:13 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:34:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:34:13 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc8d880bf1dc8a671fa9d31313860ee0281a2bad1efbc10c05a4194f738309a`  
		Last Modified: Mon, 05 Dec 2022 21:34:53 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480111b36ad35f83edd72a7ebe790032c7945690007cfa44a963fd7dbbafbde8`  
		Last Modified: Mon, 05 Dec 2022 21:35:00 GMT  
		Size: 78.2 MB (78248461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ef4a565b99663c43c0180e715ee898be4762b2642518be79f1e412fc08ce4`  
		Last Modified: Mon, 05 Dec 2022 21:34:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa5cfbc7ed0db23990fcfa621b8c3e8b40165567ef638536e5ff814d97eb2ab`  
		Last Modified: Mon, 05 Dec 2022 21:34:53 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:c80b86214fce87748627593f4617cc8a53072d31d78e3b1a950664346ce0f6a1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82391688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d469990fe1b96bfde2b3143822a4a5b9fdac48d9b3f435c46924bb70465dd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:54 GMT
ADD file:fea8a3ba06779852956b0d3a2dd7514ab33217b1fd395231864c443797f077f6 in / 
# Tue, 09 Aug 2022 17:38:54 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:20:22 GMT
ARG VAULT_VERSION=1.12.2
# Mon, 05 Dec 2022 21:20:23 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:20:34 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:20:34 GMT
# ARGS: VAULT_VERSION=1.12.2
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:20:35 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:20:36 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:20:37 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:20:39 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:20:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:20:40 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:2c44f983a875883421e7d5bc471f6437e0e377e6e7343b52c856caee71064d31`  
		Last Modified: Tue, 09 Aug 2022 17:40:01 GMT  
		Size: 2.8 MB (2832612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60188e223488b3b7af54fdbf828fa4aea3fb1b6d700666a3faa889acae098125`  
		Last Modified: Mon, 05 Dec 2022 21:21:50 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6108b505bd66a0dce2c8614c6a9380a952402c0247ceceb3cb5b11a50d02689`  
		Last Modified: Mon, 05 Dec 2022 21:21:58 GMT  
		Size: 79.6 MB (79555865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e3474c7b02ac7ae48d793010aaf1b898c36c6f85c109afbb31e424919b1d08`  
		Last Modified: Mon, 05 Dec 2022 21:21:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df3ca5f05ead293bf171cedb94dc70d5c1af02813b181bf102384a6508e64c3`  
		Last Modified: Mon, 05 Dec 2022 21:21:50 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
