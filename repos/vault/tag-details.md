<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:1.10.9`](#vault1109)
-	[`vault:1.11.6`](#vault1116)
-	[`vault:1.12.2`](#vault1122)
-	[`vault:1.9.10`](#vault1910)
-	[`vault:latest`](#vaultlatest)

## `vault:1.10.9`

```console
$ docker pull vault@sha256:89b0d1bb457adcd87aad5a4c01b009fb3da5413a8ca281c073dac43caca09ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.10.9` - linux; amd64

```console
$ docker pull vault@sha256:06c3973788c15f079851221db7608cf2ce92b26a75db4af832383d7f7b273c29
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74111011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4131e501f2caab69c6a8fe0132286fdc97a7efc77957c7db5f36584a8104f54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:01:31 GMT
ARG VAULT_VERSION=1.10.9
# Mon, 05 Dec 2022 21:01:31 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:01:40 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:01:41 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:01:41 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:01:42 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:01:42 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:01:42 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:01:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:01:42 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc20d4566ffee77bf0da71dff65e5d703ebddbabe2b71dca3e5c6203e629739`  
		Last Modified: Mon, 05 Dec 2022 21:02:26 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd5658bc8a19b8b0e4320b338fbc1d8e8cc912512397a19592635d6b87758c3`  
		Last Modified: Mon, 05 Dec 2022 21:02:35 GMT  
		Size: 71.3 MB (71280251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b3ab7daa235453a722806c8c74710abf447f42a359730c601766aa5480cc6`  
		Last Modified: Mon, 05 Dec 2022 21:02:27 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb589e16f4032be470a6f55f4c0550dcbf2178fab11696cf83eb7eca4100bb1`  
		Last Modified: Mon, 05 Dec 2022 21:02:26 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.10.9` - linux; arm variant v6

```console
$ docker pull vault@sha256:7dc0b38c3dc8cb6e81de326b069249b20f5f549f0309779a1a4f0ccf67a96783
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67359761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ad19d3405a8de4dce6fabc07981ae111163cd41fa9d19dfdd0ffbd4560f122`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:08:57 GMT
ARG VAULT_VERSION=1.10.9
# Mon, 05 Dec 2022 21:08:58 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:09:07 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:09:09 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:09:09 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:09:09 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:09:09 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:09:09 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:09:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:09:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caeb406137b0333735c4123bdf73889e25de8db00fc81b2f44e1337c6dc17029`  
		Last Modified: Mon, 05 Dec 2022 21:10:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4f97c1b622462c09b158c0de9bdc1bc88a3b208cd1ebef6618fe40d0b80f1`  
		Last Modified: Mon, 05 Dec 2022 21:10:25 GMT  
		Size: 64.7 MB (64721055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfb981d2e73f8f973775cc63559952d0aa440f9ebcb432064554d53ac352223`  
		Last Modified: Mon, 05 Dec 2022 21:10:15 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708103c9dd22434ad435012ca38d09ea5a6693a6d5a6fd9714c7d279c0fbb239`  
		Last Modified: Mon, 05 Dec 2022 21:10:15 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.10.9` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:8871cd3c4344210a635c5eabc25a4f1ff0c242b761fcdcf0f651660906bd87b1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69157329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0412ed07cb442e09cac32e451d96b7b65cc9c571d57915d81e820c126e2ac130`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:34:30 GMT
ARG VAULT_VERSION=1.10.9
# Mon, 05 Dec 2022 21:34:30 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:34:38 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:34:40 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:34:40 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:34:40 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:34:40 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:34:40 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:34:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:34:40 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c129f2b1a50b92d0447bf6ef9a525612a08be7a17fe121004c21a99d08fde319`  
		Last Modified: Mon, 05 Dec 2022 21:35:22 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6855f49287faf27f0ddd76185f88072c14f9513b2f42bcf768f66548ddcf5869`  
		Last Modified: Mon, 05 Dec 2022 21:35:29 GMT  
		Size: 66.4 MB (66431904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4146e1c3f2c63e549ab3bed34ef075b59431f3cf33992775d67fac81ea669e23`  
		Last Modified: Mon, 05 Dec 2022 21:35:22 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e23b4e89faf78e331f920c136e5f1e6cca18f8592b2c8b1a5eac69a121c4503`  
		Last Modified: Mon, 05 Dec 2022 21:35:22 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.10.9` - linux; 386

```console
$ docker pull vault@sha256:f1b9b87f675da69f14f1b9cd70e37b371d5b94b31072f1c1063b46ab553349db
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70456763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2fbe7df8889488f377799688b24962591b3a9112cc0a52a9db271a6ace9ede7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:54 GMT
ADD file:fea8a3ba06779852956b0d3a2dd7514ab33217b1fd395231864c443797f077f6 in / 
# Tue, 09 Aug 2022 17:38:54 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:21:11 GMT
ARG VAULT_VERSION=1.10.9
# Mon, 05 Dec 2022 21:21:12 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:21:21 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:21:21 GMT
# ARGS: VAULT_VERSION=1.10.9
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:21:22 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:21:23 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:21:24 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:21:26 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:21:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:21:27 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:2c44f983a875883421e7d5bc471f6437e0e377e6e7343b52c856caee71064d31`  
		Last Modified: Tue, 09 Aug 2022 17:40:01 GMT  
		Size: 2.8 MB (2832612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a82cbdbdc32e78c5666f28e12f42a5858f5b3305148f06f7c0bb9757f4328ac`  
		Last Modified: Mon, 05 Dec 2022 21:22:23 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d02977a78bc37187970ee0a0c5de2b79e90fc0fb83d43519d4549ffa26c8844`  
		Last Modified: Mon, 05 Dec 2022 21:22:30 GMT  
		Size: 67.6 MB (67620944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2a0cfbf875d07d80a5f88165a94870079a31ec93ccb06a659a48f35a34440`  
		Last Modified: Mon, 05 Dec 2022 21:22:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea7f74202d6d551f283e78f63959b3e3a36d288a66b7742e567adf808c13481`  
		Last Modified: Mon, 05 Dec 2022 21:22:23 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:1.11.6`

```console
$ docker pull vault@sha256:fc420746d2a092e76e921129b234254179f3d69929bcafdf06ae5591a650bf37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.11.6` - linux; amd64

```console
$ docker pull vault@sha256:05a16e59199ee06e0ac4672effe0ad6387478ef719762b20d43fa3cbf6360114
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77605267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b071029af0c225961a0c1907420e9f95dc7bf1049b6f4f179ee8dacea5fd644`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:01:17 GMT
ARG VAULT_VERSION=1.11.6
# Mon, 05 Dec 2022 21:01:17 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:01:25 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:01:26 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:01:26 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:01:26 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:01:27 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:01:27 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:01:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:01:27 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f20dcf27d308de5c9d42f819c745a33047fdbd52e6e18dba8a82df89d7610`  
		Last Modified: Mon, 05 Dec 2022 21:02:12 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1dd1c17d7d723cdde46f738427ff2cdc8bd938ffb8a1a9c41d082793bb2f8b`  
		Last Modified: Mon, 05 Dec 2022 21:02:21 GMT  
		Size: 74.8 MB (74774506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a449019bfdcd787d6485a45e32a277a4f510519c8ce8c80358882ec857b4de`  
		Last Modified: Mon, 05 Dec 2022 21:02:12 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbe4dc2115456af72c6ca309f9e372c718c15bef09886b4453192467ee12ad4`  
		Last Modified: Mon, 05 Dec 2022 21:02:12 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.11.6` - linux; arm variant v6

```console
$ docker pull vault@sha256:5a10f6c7f4273a8e8ecdbafb4fb56d4048d9ac97750ed7d8c2bfdefb1fa1b7ef
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70311159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951348fc445a2ee206e18059b4179337540149b000941254597b8099922742ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:08:40 GMT
ARG VAULT_VERSION=1.11.6
# Mon, 05 Dec 2022 21:08:41 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:08:49 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:08:50 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:08:50 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:08:50 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:08:50 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:08:51 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:08:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:08:51 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed6f55b0ab2c624e1fafd2c4c7e2ac2bd765c67e3c9844dbd1c3819db689b1`  
		Last Modified: Mon, 05 Dec 2022 21:09:56 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa71468b025b85caf3c912b9ac9ffa61081e60b8e263435b53b2589d35698bde`  
		Last Modified: Mon, 05 Dec 2022 21:10:08 GMT  
		Size: 67.7 MB (67672449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a77b524efd260514525a965aa68dd79ddd9ea7203f4ba94ecde935087cd378`  
		Last Modified: Mon, 05 Dec 2022 21:09:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c91ebba6f7418d2fac08d163a4dad54f1b29ecf60eae227da16f1e65c332b8`  
		Last Modified: Mon, 05 Dec 2022 21:09:56 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.11.6` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:b579698623dda4952309a33d4e15a630cb1faa60b889b727943d0265f689ee48
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72363135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19210decc3612dc259e42b961ad3be3dfd846dc2609ff94ef9baf8f78dcdd4e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:34:16 GMT
ARG VAULT_VERSION=1.11.6
# Mon, 05 Dec 2022 21:34:17 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:34:24 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:34:26 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:34:26 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:34:26 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:34:26 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:34:26 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:34:26 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a3edc873e7fb2af2d6ef9b02c0b8fba1cdd557e4f0902f1d23f16855fc113`  
		Last Modified: Mon, 05 Dec 2022 21:35:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0633eab97f043647e763c2fa37ef806599da84aa04cafb72e2b5cae71c1e92ca`  
		Last Modified: Mon, 05 Dec 2022 21:35:16 GMT  
		Size: 69.6 MB (69637713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e95356f65206b44c5641fef4fd4415290ba14b62ad3cd47f5baf9e5f088e1a`  
		Last Modified: Mon, 05 Dec 2022 21:35:09 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf35ad8e8b6e12cb5c9a1c47e2971573144b80f4a6bb205ae096dc9b6d1983c`  
		Last Modified: Mon, 05 Dec 2022 21:35:09 GMT  
		Size: 1.8 KB (1814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.11.6` - linux; 386

```console
$ docker pull vault@sha256:a7e411d5da9d0a44054fea218d5b13e95435eea85f8290d2dd47a85b88a69081
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73637586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b369f526138335e8ba76312b5e5f1a8ed455f738c7ca8d2fc6e55639b71cedd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:54 GMT
ADD file:fea8a3ba06779852956b0d3a2dd7514ab33217b1fd395231864c443797f077f6 in / 
# Tue, 09 Aug 2022 17:38:54 GMT
CMD ["/bin/sh"]
# Mon, 05 Dec 2022 21:20:48 GMT
ARG VAULT_VERSION=1.11.6
# Mon, 05 Dec 2022 21:20:49 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 05 Dec 2022 21:20:58 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 05 Dec 2022 21:20:58 GMT
# ARGS: VAULT_VERSION=1.11.6
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 05 Dec 2022 21:20:59 GMT
VOLUME [/vault/logs]
# Mon, 05 Dec 2022 21:21:00 GMT
VOLUME [/vault/file]
# Mon, 05 Dec 2022 21:21:01 GMT
EXPOSE 8200
# Mon, 05 Dec 2022 21:21:03 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 05 Dec 2022 21:21:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 05 Dec 2022 21:21:04 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:2c44f983a875883421e7d5bc471f6437e0e377e6e7343b52c856caee71064d31`  
		Last Modified: Tue, 09 Aug 2022 17:40:01 GMT  
		Size: 2.8 MB (2832612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda396760c85085f3e3930b218b04bf56838e0e744383b8eb69e19e6ee6f2adf`  
		Last Modified: Mon, 05 Dec 2022 21:22:08 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1704d38ff7817a9aeb818f48a0e8abab902070a77649dae30ae7085e421094d3`  
		Last Modified: Mon, 05 Dec 2022 21:22:16 GMT  
		Size: 70.8 MB (70801764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cb7bae0a85f6420063bddb47eab3cffc0d6625adab51151951049c966a30ed`  
		Last Modified: Mon, 05 Dec 2022 21:22:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685da5767a18c0471b02eceba99accf51c5080e2aefa555ce1a8d8872c6dc6a2`  
		Last Modified: Mon, 05 Dec 2022 21:22:08 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:1.12.2`

```console
$ docker pull vault@sha256:403c4cdc39091f58dd804133b8f1f3cc933e1a3929bd64eab50443d4557e3ee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.12.2` - linux; amd64

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

### `vault:1.12.2` - linux; arm variant v6

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

### `vault:1.12.2` - linux; arm64 variant v8

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

### `vault:1.12.2` - linux; 386

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

## `vault:1.9.10`

```console
$ docker pull vault@sha256:fe51eed602bf9f3291528e88c29f2cb371646ad1792cf1cd3ce860a802e166ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `vault:1.9.10` - linux; amd64

```console
$ docker pull vault@sha256:6a56b6ca7b15272f2944cb6c84a460981bb24f4831b5eec6f386a7a5b6609fb3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73205228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1319ffbfde70d487bd7ef0098f4dedece1fb605dd55af221d2a15405f5400642`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 20:35:18 GMT
ARG VAULT_VERSION=1.9.10
# Fri, 07 Oct 2022 20:35:18 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 07 Oct 2022 20:35:26 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 07 Oct 2022 20:35:27 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 07 Oct 2022 20:35:27 GMT
VOLUME [/vault/logs]
# Fri, 07 Oct 2022 20:35:27 GMT
VOLUME [/vault/file]
# Fri, 07 Oct 2022 20:35:27 GMT
EXPOSE 8200
# Fri, 07 Oct 2022 20:35:27 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 07 Oct 2022 20:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Oct 2022 20:35:27 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129d697f1d97ba99daed110bda884d2a0785887b08be678dce80290044fe5e31`  
		Last Modified: Fri, 07 Oct 2022 20:36:31 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be0a88106af746a4f335be2516f73e95c99fb26d4da850fb6551687503c56fb`  
		Last Modified: Fri, 07 Oct 2022 20:36:39 GMT  
		Size: 70.4 MB (70374464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daed4e617caf0936f1c7f4d8b8d99450ac92a378cb40bfcaa9b824545e4a53df`  
		Last Modified: Fri, 07 Oct 2022 20:36:31 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9864af2a51f0c3a5610c2543520008ed2bdfba6bec5b6f257fcd839d6ba6e85b`  
		Last Modified: Fri, 07 Oct 2022 20:36:31 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.9.10` - linux; arm variant v6

```console
$ docker pull vault@sha256:90a712fbedac6cd82a84b22f61c18903cda11e93af49d093d7070c46c26686cf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66514809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d7993947d4b677c75a09761ba5be0442881f4e332faddd0797b0b66e5b1d04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:43 GMT
ADD file:8ff80989f06f5a8ffe16c56e00538928dcb1e46faa2b58ab9c14c7227a6cd8f9 in / 
# Thu, 10 Nov 2022 20:49:43 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 11:18:35 GMT
ARG VAULT_VERSION=1.9.10
# Fri, 11 Nov 2022 11:18:36 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 11 Nov 2022 11:18:44 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 11 Nov 2022 11:18:45 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 11 Nov 2022 11:18:45 GMT
VOLUME [/vault/logs]
# Fri, 11 Nov 2022 11:18:45 GMT
VOLUME [/vault/file]
# Fri, 11 Nov 2022 11:18:45 GMT
EXPOSE 8200
# Fri, 11 Nov 2022 11:18:45 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 11 Nov 2022 11:18:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Nov 2022 11:18:46 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:7d147289082e6aa6ef510c09d7c0ac8b5026e0b591f1bfcaf01ceada43c9ec65`  
		Last Modified: Tue, 09 Aug 2022 17:51:04 GMT  
		Size: 2.6 MB (2635498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f9788d97bca9729754b282db12ac680c3ec3df5eb26350d1fca3270f7b06ac`  
		Last Modified: Fri, 11 Nov 2022 11:20:11 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c4c11f8106ab007e399ab983d5945f98ee4c8db26fb0c218ee169c6f80736b`  
		Last Modified: Fri, 11 Nov 2022 11:20:21 GMT  
		Size: 63.9 MB (63876101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fefc9d51533ce9a9223591c4c6ab27e17023234f55598832356cababa8a330c`  
		Last Modified: Fri, 11 Nov 2022 11:20:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddc705b21c147a779054a9e9f17ddefc866b5d6ecb325d141e6f6a1dea0f560`  
		Last Modified: Fri, 11 Nov 2022 11:20:11 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.9.10` - linux; arm64 variant v8

```console
$ docker pull vault@sha256:7d93d291229181e4e78fedbe80841302dcc069d6c8849f3b046e45fd76f12cc1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68305784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef583c09b6683c21ffe68975817ece2d5428b516ae4d2b5b711eab59c28ccfbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Fri, 11 Nov 2022 05:27:16 GMT
ARG VAULT_VERSION=1.9.10
# Fri, 11 Nov 2022 05:27:17 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 11 Nov 2022 05:27:25 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 11 Nov 2022 05:27:26 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 11 Nov 2022 05:27:26 GMT
VOLUME [/vault/logs]
# Fri, 11 Nov 2022 05:27:26 GMT
VOLUME [/vault/file]
# Fri, 11 Nov 2022 05:27:26 GMT
EXPOSE 8200
# Fri, 11 Nov 2022 05:27:26 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 11 Nov 2022 05:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Nov 2022 05:27:27 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21a1afb6dafd0e1e530f629466ee49e34796efdc19dfd96c9984e2fc7efadf1`  
		Last Modified: Fri, 11 Nov 2022 05:28:23 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02018a2a0b1a97e98994b0b1e2e4d80cada167d58ee702317038f0ab6d2496d3`  
		Last Modified: Fri, 11 Nov 2022 05:28:30 GMT  
		Size: 65.6 MB (65580360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73562d938b321d575fc6d2ac8fef5d264b02131f0202da9e9d8e45cdecb30c`  
		Last Modified: Fri, 11 Nov 2022 05:28:23 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db91b442ff15867738e6bd7fcff72d129e5d19bcf2f29a8edc889acbd884124`  
		Last Modified: Fri, 11 Nov 2022 05:28:23 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:1.9.10` - linux; 386

```console
$ docker pull vault@sha256:11ceae45e5122566c563931a5087f0f281a7122ff96c0fed26243c5ed3bc2897
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69576445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041f436e9c64018fcd8cd88e3f621cf5dfe7b9f368ee6eaddf6fa38c08fd9ac7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:54 GMT
ADD file:fea8a3ba06779852956b0d3a2dd7514ab33217b1fd395231864c443797f077f6 in / 
# Tue, 09 Aug 2022 17:38:54 GMT
CMD ["/bin/sh"]
# Fri, 07 Oct 2022 20:51:53 GMT
ARG VAULT_VERSION=1.9.10
# Fri, 07 Oct 2022 20:51:54 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 07 Oct 2022 20:52:02 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init tzdata &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=C874011F0AB405110D02105534365D9472D7468F;     found='';     for server in         hkps://keys.openpgp.org         hkps://keyserver.ubuntu.com         hkps://pgp.mit.edu     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --batch --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cp /tmp/build/vault /bin/vault &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/EULA.txt /usr/share/doc/vault/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/vault; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/vault/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 07 Oct 2022 20:52:03 GMT
# ARGS: VAULT_VERSION=1.9.10
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 07 Oct 2022 20:52:04 GMT
VOLUME [/vault/logs]
# Fri, 07 Oct 2022 20:52:05 GMT
VOLUME [/vault/file]
# Fri, 07 Oct 2022 20:52:06 GMT
EXPOSE 8200
# Fri, 07 Oct 2022 20:52:08 GMT
COPY file:284725e82dfade67c8b2092585f70a151b8782d83106082a5b4852b996b7e550 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 07 Oct 2022 20:52:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Oct 2022 20:52:09 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:2c44f983a875883421e7d5bc471f6437e0e377e6e7343b52c856caee71064d31`  
		Last Modified: Tue, 09 Aug 2022 17:40:01 GMT  
		Size: 2.8 MB (2832612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22b6c8e40c34512957e16b1b20c5c3b3be109a5f3475dcb2d8389b64a93de2c`  
		Last Modified: Fri, 07 Oct 2022 20:53:17 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0ddb4fda198f2c0901868cde900b0abc9142d1f2722989e7189e96ea278b2a`  
		Last Modified: Fri, 07 Oct 2022 20:53:24 GMT  
		Size: 66.7 MB (66740625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02464e585952b48aa2e970a71e7a589c86384ab488debe8d7879141069c33f`  
		Last Modified: Fri, 07 Oct 2022 20:53:17 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5050d6a106f7372bbec28f9e113fb5d9ffbadcc73ea7bb0bc3e4a049d14a5b4c`  
		Last Modified: Fri, 07 Oct 2022 20:53:17 GMT  
		Size: 1.8 KB (1815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
