<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.12`](#consul112)
-	[`consul:1.12.8`](#consul1128)
-	[`consul:1.13`](#consul113)
-	[`consul:1.13.5`](#consul1135)
-	[`consul:1.14`](#consul114)
-	[`consul:1.14.3`](#consul1143)
-	[`consul:latest`](#consullatest)

## `consul:1.12`

```console
$ docker pull consul@sha256:75b553d9970ab232449afdd76b544a9b76aea90302fe720d15fa632a76e79c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.12` - linux; amd64

```console
$ docker pull consul@sha256:305e23b59b78fff347885774082f210694b7d627b8830309490b39bd042ecd98
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49763802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fc4f16adc90f274c76464c08d8adaaf969fdffa15c1e23e6c863b9fdc6a899`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:33 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 01:22:33 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:33 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:34 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:40 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:41 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:41 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:41 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:41 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:42 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:42 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e0c61a3fce8581208f92409aebc45286f603c4d54b43b475ad8cdf14b5033`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e37c9e899c1fd899ee2c7205bc62ebe5eff7f6716179fef522560964ceba571`  
		Last Modified: Thu, 15 Dec 2022 01:23:34 GMT  
		Size: 46.9 MB (46936907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0b8c2f975e3208af6d243e363c4520c79c1400104051cdda66b85eb0b600b5`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8216eb97fba0f71cf91ce96e4f9a1a0b8bdd3b290e96c4c76ad34b6c8bbd5671`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366cd1a6024863672aa280b14682cc2b0ca5fd101cddd9f987d584f3d9e29638`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.12` - linux; arm variant v6

```console
$ docker pull consul@sha256:813e0b1b0a131a8d2d08d956fba181ec0308be59caade60775fdae3b5b0bcdbc
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47558187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b070b955db706ab2036352bb8b5f62b9f246b1160907237ffd03d088ebce597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:56:05 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 00:56:05 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:56:05 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:56:06 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:56:12 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:56:13 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:56:14 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:56:14 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:56:14 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:56:14 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:56:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:56:14 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:56:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:56:15 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ec235161d4dd87c02ab8e813db6e3c783317dab2e1daa4c27de0cda1f01e11`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f48a5b14c9d4d2e9ee87e526c730d9f352f226b529cf90183d5a5bef894d6cc`  
		Last Modified: Thu, 15 Dec 2022 00:57:31 GMT  
		Size: 44.9 MB (44923739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725d9fb62556d5148fb00595d5b6afcabe22318f5033fc6c4d4242b2f7b99d96`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2571f4e86c197588bcab34e03401b4397ebc7b20218fd2d14d026a30ec5a76`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc344b8aede337d209b90ba247c2959de299fc1391427f30e108062b7058514a`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.12` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:17704febbd1f98f9e43e01c1a339a08a1eb17a0d0afdd8cb35a1668a8de8492a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47329176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b507f9ed3e9d94f411634ae891892913d996b24d3d740c22acbe17e211496a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:47 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 01:42:47 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:47 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:53 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:54 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:54 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:54 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:54 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:54 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:54 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:54 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:55 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269c4cc48ba73b0644fb9919a36d1d9418cf7f31bf9c6ea9ac01405ba7494d4d`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee6b135740341a691234642cc7f4698a7d19fb90a82d66ff2295db056f79852`  
		Last Modified: Thu, 15 Dec 2022 01:43:39 GMT  
		Size: 44.6 MB (44607350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246cb566f3e87bcbd4e012829fcf624270d9aed3078ea018b60d223597cf0fc8`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d571056386b1007695f53a9bea4b086bb05306e29eb59f81fbbcddea2ded362`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5e1f0e97b4510338c2b64c18e0ac3e1401be5e9c0092eee50029f5911e81c`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.12` - linux; 386

```console
$ docker pull consul@sha256:3d9bb54981aec58569587ae3182c295d3abecf4539b64169e59a8273856f5e94
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48788847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025e07ff26efc5dfa44a5d5b5393e24d8d48e27533d3fc4dad9e0b22c762ab85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:44:11 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 01:44:12 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:44:13 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:44:14 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:44:20 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:44:21 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:44:22 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:44:23 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:44:24 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:44:25 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:44:26 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:44:28 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:44:29 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83645458457281ce38a47fd02d9b6dc80034efd250b5967b36f9a234efe31ea8`  
		Last Modified: Thu, 15 Dec 2022 01:45:27 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258a61affe1b6ebceb75ea8598e509ec90ed183b34808f8a796dd801b1810b7`  
		Last Modified: Thu, 15 Dec 2022 01:45:33 GMT  
		Size: 46.0 MB (45957002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78317d7c1e83f246965722dc807902471552ba7e9b29a5ec822e26ce59b27d8`  
		Last Modified: Thu, 15 Dec 2022 01:45:27 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db409ea2912d0ef76d4dd752a75aca1f2950e1c57d4d8b0ce4c4b861ff139b57`  
		Last Modified: Thu, 15 Dec 2022 01:45:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a9cd49b47413ec9740724b5ecc99eaaabfbb9ba098bc9b2d6a0c69775e0608`  
		Last Modified: Thu, 15 Dec 2022 01:45:28 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.12.8`

```console
$ docker pull consul@sha256:75b553d9970ab232449afdd76b544a9b76aea90302fe720d15fa632a76e79c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.12.8` - linux; amd64

```console
$ docker pull consul@sha256:305e23b59b78fff347885774082f210694b7d627b8830309490b39bd042ecd98
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49763802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fc4f16adc90f274c76464c08d8adaaf969fdffa15c1e23e6c863b9fdc6a899`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:33 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 01:22:33 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:33 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:34 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:40 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:41 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:41 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:41 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:41 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:42 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:42 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e0c61a3fce8581208f92409aebc45286f603c4d54b43b475ad8cdf14b5033`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e37c9e899c1fd899ee2c7205bc62ebe5eff7f6716179fef522560964ceba571`  
		Last Modified: Thu, 15 Dec 2022 01:23:34 GMT  
		Size: 46.9 MB (46936907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0b8c2f975e3208af6d243e363c4520c79c1400104051cdda66b85eb0b600b5`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8216eb97fba0f71cf91ce96e4f9a1a0b8bdd3b290e96c4c76ad34b6c8bbd5671`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366cd1a6024863672aa280b14682cc2b0ca5fd101cddd9f987d584f3d9e29638`  
		Last Modified: Thu, 15 Dec 2022 01:23:28 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.12.8` - linux; arm variant v6

```console
$ docker pull consul@sha256:813e0b1b0a131a8d2d08d956fba181ec0308be59caade60775fdae3b5b0bcdbc
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47558187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b070b955db706ab2036352bb8b5f62b9f246b1160907237ffd03d088ebce597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:56:05 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 00:56:05 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:56:05 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:56:06 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:56:12 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:56:13 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:56:14 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:56:14 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:56:14 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:56:14 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:56:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:56:14 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:56:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:56:15 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ec235161d4dd87c02ab8e813db6e3c783317dab2e1daa4c27de0cda1f01e11`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f48a5b14c9d4d2e9ee87e526c730d9f352f226b529cf90183d5a5bef894d6cc`  
		Last Modified: Thu, 15 Dec 2022 00:57:31 GMT  
		Size: 44.9 MB (44923739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725d9fb62556d5148fb00595d5b6afcabe22318f5033fc6c4d4242b2f7b99d96`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2571f4e86c197588bcab34e03401b4397ebc7b20218fd2d14d026a30ec5a76`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc344b8aede337d209b90ba247c2959de299fc1391427f30e108062b7058514a`  
		Last Modified: Thu, 15 Dec 2022 00:57:24 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.12.8` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:17704febbd1f98f9e43e01c1a339a08a1eb17a0d0afdd8cb35a1668a8de8492a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47329176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b507f9ed3e9d94f411634ae891892913d996b24d3d740c22acbe17e211496a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:47 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 01:42:47 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:47 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:53 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:54 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:54 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:54 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:54 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:54 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:54 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:54 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:55 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269c4cc48ba73b0644fb9919a36d1d9418cf7f31bf9c6ea9ac01405ba7494d4d`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee6b135740341a691234642cc7f4698a7d19fb90a82d66ff2295db056f79852`  
		Last Modified: Thu, 15 Dec 2022 01:43:39 GMT  
		Size: 44.6 MB (44607350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246cb566f3e87bcbd4e012829fcf624270d9aed3078ea018b60d223597cf0fc8`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d571056386b1007695f53a9bea4b086bb05306e29eb59f81fbbcddea2ded362`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5e1f0e97b4510338c2b64c18e0ac3e1401be5e9c0092eee50029f5911e81c`  
		Last Modified: Thu, 15 Dec 2022 01:43:35 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.12.8` - linux; 386

```console
$ docker pull consul@sha256:3d9bb54981aec58569587ae3182c295d3abecf4539b64169e59a8273856f5e94
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48788847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025e07ff26efc5dfa44a5d5b5393e24d8d48e27533d3fc4dad9e0b22c762ab85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:44:11 GMT
ARG CONSUL_VERSION=1.12.8
# Thu, 15 Dec 2022 01:44:12 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.12.8 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:44:13 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:44:14 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:44:20 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:44:21 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:44:22 GMT
# ARGS: CONSUL_VERSION=1.12.8
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:44:23 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:44:24 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:44:25 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:44:26 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:44:28 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:44:29 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83645458457281ce38a47fd02d9b6dc80034efd250b5967b36f9a234efe31ea8`  
		Last Modified: Thu, 15 Dec 2022 01:45:27 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258a61affe1b6ebceb75ea8598e509ec90ed183b34808f8a796dd801b1810b7`  
		Last Modified: Thu, 15 Dec 2022 01:45:33 GMT  
		Size: 46.0 MB (45957002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78317d7c1e83f246965722dc807902471552ba7e9b29a5ec822e26ce59b27d8`  
		Last Modified: Thu, 15 Dec 2022 01:45:27 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db409ea2912d0ef76d4dd752a75aca1f2950e1c57d4d8b0ce4c4b861ff139b57`  
		Last Modified: Thu, 15 Dec 2022 01:45:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a9cd49b47413ec9740724b5ecc99eaaabfbb9ba098bc9b2d6a0c69775e0608`  
		Last Modified: Thu, 15 Dec 2022 01:45:28 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.13`

```console
$ docker pull consul@sha256:4502b662b0712501be6d55a2426bd64a409831bb89a0f1e5cf459b6df253bf95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.13` - linux; amd64

```console
$ docker pull consul@sha256:2e39ca791e3122badb7fab2fe978fd06ea2a5a3e7c7a58f52238f72a1c7a6d0e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52137328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0b807fd15526dba429fec121a971b8006667ee3fba57c6da2da0b8939b17ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:22 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 01:22:22 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:22 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:28 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:29 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:29 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:29 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:30 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:30 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:30 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:30 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:30 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ade2bcc6ac94a1371c0767f7f965e35f3486a8cbca22eae0ad3f3bb214fe418`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f6e7c5356741c691b1d2687960677e34bc2fbd58fbeb3c86796045b3c9cb2d`  
		Last Modified: Thu, 15 Dec 2022 01:23:20 GMT  
		Size: 49.3 MB (49310432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1350680ffa49437b82c3af83420ed5958b03be416d5ddb38b0c3e97ce75f7b`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a58e91f4def955f80d49ca29eb78ee73b2355337ba8d0e0913eda63af38c0b4`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee102ca9206bf7e9657c0cad5f971d852235d381e97f6fe20cd3c9b73f5e7be5`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.13` - linux; arm variant v6

```console
$ docker pull consul@sha256:c5567a8fc2100ece3b1de95cabdbc0241e4417349c4baa832c380d8b18268b14
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49890504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d53dddeb5ad15ef46f2d521d66b4a137babd3ad33922468b306a8a7e3eac8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:55:47 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 00:55:47 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:55:48 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:55:48 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:55:56 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:55:57 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:55:58 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:55:58 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:55:58 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:55:58 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:55:58 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:55:58 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:55:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:55:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d630172a291aa1cf0033366cf82e58b45f6b9b67c13be6d54991a0ec0d98f30b`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30805dad966f458c24f31d0b9ad4b43dc8100e5be0370d3cf3dda7304222d21f`  
		Last Modified: Thu, 15 Dec 2022 00:57:14 GMT  
		Size: 47.3 MB (47256052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19184601431f99d7a766ea554ba87db949f798cb3b8a81b0e2bb7a3276a3d35`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08b502ad37deaae0d9eace52c091a09268af96ee090a71985da1e938b0cdfb5`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4cff7f1efbb00f38a38f67c9cc907e76baa1285bea449ee56e30ffade691ef`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.13` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:bf6223a659f60d4685d990e9bfb37ca4c3793b4dfa286a875f4677c0114aac11
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49365527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc24de8b21c7f52fac75357883cf95bb26d1728425c346e8de856df0449f3080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:36 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 01:42:36 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:36 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:42 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:42 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:43 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:43 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:43 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:43 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:43 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:43 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075a6ad3110379fe2319b556e4ff90a151f2456e9f10032df3551a01b613a40a`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a4aa51031a1c23d9565b94bd02215bf3455f612ee41cd46d0c9c29ca0a24f`  
		Last Modified: Thu, 15 Dec 2022 01:43:27 GMT  
		Size: 46.6 MB (46643705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a416d85755074f936bcd63a171966d046ac565adcf2ddbc5254066dc68e49`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364a6933f960cbc75be72d7816673a2b65ddef3a53c01bc70c74368a5a5521b6`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd5eed0cb8a54a97f76785f299f653577513aa7058962cce684dc1bf884b543`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.13` - linux; 386

```console
$ docker pull consul@sha256:becbb472770f4afb6d000f1c1b8c2c80954516948a68f70c776895af35776126
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50988326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde46d3a47eb6ec1a3eb558d62718e542d3e3a17d97ce194f687067b0a49d4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:43:45 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 01:43:46 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:43:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:43:48 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:43:55 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:43:56 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:43:57 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:43:58 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:43:59 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:44:00 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:44:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:44:03 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:44:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:44:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60639e012c97902d61edd8985f873b3c420a57893460cb4ce7f9c694e76ef605`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d861eff714a00e9b82a7157278b5a902935ca5753e684ac6d3650c7cbb19f6`  
		Last Modified: Thu, 15 Dec 2022 01:45:17 GMT  
		Size: 48.2 MB (48156484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea252605582516366fc0d15982c0263128d84368ee687c8d7e2225a8efa202af`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5eaa18599f33285d5e08ce27d0a89af9cfc8e6a1c1ec693a7fb7e5cef085bd9`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631c55398f3f9e98e99302c8919526d0be06005da9ae2bcf0318cfedd56d8bb6`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.13.5`

```console
$ docker pull consul@sha256:4502b662b0712501be6d55a2426bd64a409831bb89a0f1e5cf459b6df253bf95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.13.5` - linux; amd64

```console
$ docker pull consul@sha256:2e39ca791e3122badb7fab2fe978fd06ea2a5a3e7c7a58f52238f72a1c7a6d0e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52137328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0b807fd15526dba429fec121a971b8006667ee3fba57c6da2da0b8939b17ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:22 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 01:22:22 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:22 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:28 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:29 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:29 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:29 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:30 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:30 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:30 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:30 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:30 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ade2bcc6ac94a1371c0767f7f965e35f3486a8cbca22eae0ad3f3bb214fe418`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f6e7c5356741c691b1d2687960677e34bc2fbd58fbeb3c86796045b3c9cb2d`  
		Last Modified: Thu, 15 Dec 2022 01:23:20 GMT  
		Size: 49.3 MB (49310432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1350680ffa49437b82c3af83420ed5958b03be416d5ddb38b0c3e97ce75f7b`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a58e91f4def955f80d49ca29eb78ee73b2355337ba8d0e0913eda63af38c0b4`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee102ca9206bf7e9657c0cad5f971d852235d381e97f6fe20cd3c9b73f5e7be5`  
		Last Modified: Thu, 15 Dec 2022 01:23:14 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.13.5` - linux; arm variant v6

```console
$ docker pull consul@sha256:c5567a8fc2100ece3b1de95cabdbc0241e4417349c4baa832c380d8b18268b14
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49890504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d53dddeb5ad15ef46f2d521d66b4a137babd3ad33922468b306a8a7e3eac8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:55:47 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 00:55:47 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:55:48 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:55:48 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:55:56 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:55:57 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:55:58 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:55:58 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:55:58 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:55:58 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:55:58 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:55:58 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:55:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:55:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d630172a291aa1cf0033366cf82e58b45f6b9b67c13be6d54991a0ec0d98f30b`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30805dad966f458c24f31d0b9ad4b43dc8100e5be0370d3cf3dda7304222d21f`  
		Last Modified: Thu, 15 Dec 2022 00:57:14 GMT  
		Size: 47.3 MB (47256052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19184601431f99d7a766ea554ba87db949f798cb3b8a81b0e2bb7a3276a3d35`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08b502ad37deaae0d9eace52c091a09268af96ee090a71985da1e938b0cdfb5`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4cff7f1efbb00f38a38f67c9cc907e76baa1285bea449ee56e30ffade691ef`  
		Last Modified: Thu, 15 Dec 2022 00:57:06 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.13.5` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:bf6223a659f60d4685d990e9bfb37ca4c3793b4dfa286a875f4677c0114aac11
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49365527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc24de8b21c7f52fac75357883cf95bb26d1728425c346e8de856df0449f3080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:36 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 01:42:36 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:36 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:42 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:42 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:43 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:43 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:43 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:43 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:43 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:43 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075a6ad3110379fe2319b556e4ff90a151f2456e9f10032df3551a01b613a40a`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a4aa51031a1c23d9565b94bd02215bf3455f612ee41cd46d0c9c29ca0a24f`  
		Last Modified: Thu, 15 Dec 2022 01:43:27 GMT  
		Size: 46.6 MB (46643705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a416d85755074f936bcd63a171966d046ac565adcf2ddbc5254066dc68e49`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364a6933f960cbc75be72d7816673a2b65ddef3a53c01bc70c74368a5a5521b6`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd5eed0cb8a54a97f76785f299f653577513aa7058962cce684dc1bf884b543`  
		Last Modified: Thu, 15 Dec 2022 01:43:22 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.13.5` - linux; 386

```console
$ docker pull consul@sha256:becbb472770f4afb6d000f1c1b8c2c80954516948a68f70c776895af35776126
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50988326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde46d3a47eb6ec1a3eb558d62718e542d3e3a17d97ce194f687067b0a49d4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:43:45 GMT
ARG CONSUL_VERSION=1.13.5
# Thu, 15 Dec 2022 01:43:46 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.13.5 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:43:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:43:48 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:43:55 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:43:56 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:43:57 GMT
# ARGS: CONSUL_VERSION=1.13.5
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:43:58 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:43:59 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:44:00 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:44:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:44:03 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:44:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:44:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60639e012c97902d61edd8985f873b3c420a57893460cb4ce7f9c694e76ef605`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d861eff714a00e9b82a7157278b5a902935ca5753e684ac6d3650c7cbb19f6`  
		Last Modified: Thu, 15 Dec 2022 01:45:17 GMT  
		Size: 48.2 MB (48156484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea252605582516366fc0d15982c0263128d84368ee687c8d7e2225a8efa202af`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5eaa18599f33285d5e08ce27d0a89af9cfc8e6a1c1ec693a7fb7e5cef085bd9`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631c55398f3f9e98e99302c8919526d0be06005da9ae2bcf0318cfedd56d8bb6`  
		Last Modified: Thu, 15 Dec 2022 01:45:11 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.14`

```console
$ docker pull consul@sha256:7e8ad15dbd233dc1c12e298a3c25a8b614d1e185d239f14e483ca7dd4c7a5894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.14` - linux; amd64

```console
$ docker pull consul@sha256:dea5f7a3ec50b778e8c2408f94020d987608eec3f591f4651b781b8175b2793e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56200682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6c5f52aa821efcdcc3dbd909b75bba742e8ddc84df534842cb1f4b356f16ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:10 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:22:10 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:11 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:17 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:18 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:18 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:18 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:19 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:19 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cade7a0e680c37056dffc702c8778e47c3c6bb9a8382f5301a708b6d748795e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4cab59f49383674c5f809ffd85a0fbdc0281215b7280d5032db7edf4287563`  
		Last Modified: Thu, 15 Dec 2022 01:23:03 GMT  
		Size: 53.4 MB (53373785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd2812543dacddd9cf48c3587da9d866fd96b32126c9a03df2bad68b18cc59e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c601956b715520433d76902b109d933490461564a8beac5fb8253677686df0e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1d7893a4513e5495738845e862bacd3c68386c29dd80f90000c45639ae539`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.14` - linux; arm variant v6

```console
$ docker pull consul@sha256:56f2afbf2f6b51c255f0a1c4b080fee3a6352c3acf95781a854f3296253ef097
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53602079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0773efb085c2745b123b7d6b4257fa7a31a0443f7fb2c8546b3aefa18fe84e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:55:29 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 00:55:29 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:55:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:55:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:55:38 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:55:39 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:55:40 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:55:40 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:55:40 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:55:40 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f063f4f11014e697d511e583e105e55b8d2ab36ae8d040b205ded9da6774f3`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83895284f3be525fc6b02751a569dfd5cabf2da140bbb1e79a2fecc4c3293e`  
		Last Modified: Thu, 15 Dec 2022 00:56:51 GMT  
		Size: 51.0 MB (50967628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b8dffa31202a7d745628d456bddb093eb29e6a7bc4452b1de10ac6ea6f3fc`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cf8c60e768ca78c03dd4e843dfa0479fd268c71995ee0e68b5bfbe3a427a61`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6de48c0082706c3fbf94896764fd28e3a70d38e2834b9cfc2d3a01d621b022`  
		Last Modified: Thu, 15 Dec 2022 00:56:43 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.14` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:f4db0d8e2b04e57c55705dd58e85c4f889a5df7ead3be11907ec6498c066449d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53029355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4521fdb3b6dbea4f1ec88a283d56f24f40f9197f4f0431e3ba37ffecc839c650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:24 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:42:24 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:25 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:31 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:32 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:32 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:32 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:32 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060510eabf7e84261aa2ed9599a5d403686ad8e0c5d404350bccecca5d5badc9`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5c448183951aca4754ea3b973f7cbc4145c14dbd791b038536e4950120602c`  
		Last Modified: Thu, 15 Dec 2022 01:43:11 GMT  
		Size: 50.3 MB (50307535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada275e7aa3bc6bd371b6be3f1ef6dcac6834b4f46509ec553f82d0a11a99c7d`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a41675c125eaaed118c9dde533371b89db2e4b2696f8c19094c28a7abacbb5`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47c7189b5859a3f2c5de76587d49641731be19bb78cd9afdc0a7279d67dacd`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.14` - linux; 386

```console
$ docker pull consul@sha256:20f0cd1a902dd7195b8d4e7fee9efb484ef0737d6f5afc8d55e42ba7aa6fa0eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54991129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb6cdc64033df2ca740b9adb9fd850c3aa92f6b99292de33fea887909efdebe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:43:18 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:43:19 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:43:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:43:21 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:43:29 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:43:29 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:43:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:43:31 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:43:32 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:43:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:43:34 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:43:36 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:43:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329a78585fb4644b68ccd8dd0a5c118837f342c281ed9b74a87be366844095c`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33040af0803f61c89587cbebad9ce2ea09385072ae8c7a6b5dd38ba4edf2de0a`  
		Last Modified: Thu, 15 Dec 2022 01:44:57 GMT  
		Size: 52.2 MB (52159283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfd669ac85cff69517593049dcff0f6cba03db3c74b16a0a6f83443cb4eb230`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7128ed833e81381c5f9c0f2fe4b6a0bb4f39685d1a7240ad192040dbcd1b625b`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7980ddcce16e98ddfd78b044931f7d3b6b43c2e4116a2df676cc1bca6111c92`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.14.3`

```console
$ docker pull consul@sha256:7e8ad15dbd233dc1c12e298a3c25a8b614d1e185d239f14e483ca7dd4c7a5894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.14.3` - linux; amd64

```console
$ docker pull consul@sha256:dea5f7a3ec50b778e8c2408f94020d987608eec3f591f4651b781b8175b2793e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56200682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6c5f52aa821efcdcc3dbd909b75bba742e8ddc84df534842cb1f4b356f16ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:10 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:22:10 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:11 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:17 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:18 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:18 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:18 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:19 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:19 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cade7a0e680c37056dffc702c8778e47c3c6bb9a8382f5301a708b6d748795e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4cab59f49383674c5f809ffd85a0fbdc0281215b7280d5032db7edf4287563`  
		Last Modified: Thu, 15 Dec 2022 01:23:03 GMT  
		Size: 53.4 MB (53373785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd2812543dacddd9cf48c3587da9d866fd96b32126c9a03df2bad68b18cc59e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c601956b715520433d76902b109d933490461564a8beac5fb8253677686df0e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1d7893a4513e5495738845e862bacd3c68386c29dd80f90000c45639ae539`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.14.3` - linux; arm variant v6

```console
$ docker pull consul@sha256:56f2afbf2f6b51c255f0a1c4b080fee3a6352c3acf95781a854f3296253ef097
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53602079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0773efb085c2745b123b7d6b4257fa7a31a0443f7fb2c8546b3aefa18fe84e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:55:29 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 00:55:29 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:55:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:55:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:55:38 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:55:39 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:55:40 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:55:40 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:55:40 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:55:40 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f063f4f11014e697d511e583e105e55b8d2ab36ae8d040b205ded9da6774f3`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83895284f3be525fc6b02751a569dfd5cabf2da140bbb1e79a2fecc4c3293e`  
		Last Modified: Thu, 15 Dec 2022 00:56:51 GMT  
		Size: 51.0 MB (50967628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b8dffa31202a7d745628d456bddb093eb29e6a7bc4452b1de10ac6ea6f3fc`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cf8c60e768ca78c03dd4e843dfa0479fd268c71995ee0e68b5bfbe3a427a61`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6de48c0082706c3fbf94896764fd28e3a70d38e2834b9cfc2d3a01d621b022`  
		Last Modified: Thu, 15 Dec 2022 00:56:43 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.14.3` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:f4db0d8e2b04e57c55705dd58e85c4f889a5df7ead3be11907ec6498c066449d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53029355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4521fdb3b6dbea4f1ec88a283d56f24f40f9197f4f0431e3ba37ffecc839c650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:24 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:42:24 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:25 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:31 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:32 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:32 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:32 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:32 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060510eabf7e84261aa2ed9599a5d403686ad8e0c5d404350bccecca5d5badc9`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5c448183951aca4754ea3b973f7cbc4145c14dbd791b038536e4950120602c`  
		Last Modified: Thu, 15 Dec 2022 01:43:11 GMT  
		Size: 50.3 MB (50307535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada275e7aa3bc6bd371b6be3f1ef6dcac6834b4f46509ec553f82d0a11a99c7d`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a41675c125eaaed118c9dde533371b89db2e4b2696f8c19094c28a7abacbb5`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47c7189b5859a3f2c5de76587d49641731be19bb78cd9afdc0a7279d67dacd`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.14.3` - linux; 386

```console
$ docker pull consul@sha256:20f0cd1a902dd7195b8d4e7fee9efb484ef0737d6f5afc8d55e42ba7aa6fa0eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54991129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb6cdc64033df2ca740b9adb9fd850c3aa92f6b99292de33fea887909efdebe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:43:18 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:43:19 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:43:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:43:21 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:43:29 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:43:29 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:43:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:43:31 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:43:32 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:43:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:43:34 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:43:36 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:43:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329a78585fb4644b68ccd8dd0a5c118837f342c281ed9b74a87be366844095c`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33040af0803f61c89587cbebad9ce2ea09385072ae8c7a6b5dd38ba4edf2de0a`  
		Last Modified: Thu, 15 Dec 2022 01:44:57 GMT  
		Size: 52.2 MB (52159283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfd669ac85cff69517593049dcff0f6cba03db3c74b16a0a6f83443cb4eb230`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7128ed833e81381c5f9c0f2fe4b6a0bb4f39685d1a7240ad192040dbcd1b625b`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7980ddcce16e98ddfd78b044931f7d3b6b43c2e4116a2df676cc1bca6111c92`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:7e8ad15dbd233dc1c12e298a3c25a8b614d1e185d239f14e483ca7dd4c7a5894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:dea5f7a3ec50b778e8c2408f94020d987608eec3f591f4651b781b8175b2793e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56200682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6c5f52aa821efcdcc3dbd909b75bba742e8ddc84df534842cb1f4b356f16ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:22:10 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:22:10 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:22:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:22:11 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:22:17 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:22:18 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:22:18 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:22:18 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:22:19 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:22:19 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:22:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:22:19 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cade7a0e680c37056dffc702c8778e47c3c6bb9a8382f5301a708b6d748795e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4cab59f49383674c5f809ffd85a0fbdc0281215b7280d5032db7edf4287563`  
		Last Modified: Thu, 15 Dec 2022 01:23:03 GMT  
		Size: 53.4 MB (53373785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd2812543dacddd9cf48c3587da9d866fd96b32126c9a03df2bad68b18cc59e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c601956b715520433d76902b109d933490461564a8beac5fb8253677686df0e`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1d7893a4513e5495738845e862bacd3c68386c29dd80f90000c45639ae539`  
		Last Modified: Thu, 15 Dec 2022 01:22:56 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:56f2afbf2f6b51c255f0a1c4b080fee3a6352c3acf95781a854f3296253ef097
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53602079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c0773efb085c2745b123b7d6b4257fa7a31a0443f7fb2c8546b3aefa18fe84e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 00:55:29 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 00:55:29 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 00:55:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 00:55:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 00:55:38 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 00:55:39 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 00:55:40 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 00:55:40 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 00:55:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 00:55:40 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 00:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 00:55:40 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f063f4f11014e697d511e583e105e55b8d2ab36ae8d040b205ded9da6774f3`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83895284f3be525fc6b02751a569dfd5cabf2da140bbb1e79a2fecc4c3293e`  
		Last Modified: Thu, 15 Dec 2022 00:56:51 GMT  
		Size: 51.0 MB (50967628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382b8dffa31202a7d745628d456bddb093eb29e6a7bc4452b1de10ac6ea6f3fc`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cf8c60e768ca78c03dd4e843dfa0479fd268c71995ee0e68b5bfbe3a427a61`  
		Last Modified: Thu, 15 Dec 2022 00:56:42 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6de48c0082706c3fbf94896764fd28e3a70d38e2834b9cfc2d3a01d621b022`  
		Last Modified: Thu, 15 Dec 2022 00:56:43 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:f4db0d8e2b04e57c55705dd58e85c4f889a5df7ead3be11907ec6498c066449d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53029355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4521fdb3b6dbea4f1ec88a283d56f24f40f9197f4f0431e3ba37ffecc839c650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:42:24 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:42:24 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:42:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:42:25 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:42:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:42:31 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:42:32 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:42:32 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:42:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:42:32 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:42:32 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060510eabf7e84261aa2ed9599a5d403686ad8e0c5d404350bccecca5d5badc9`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5c448183951aca4754ea3b973f7cbc4145c14dbd791b038536e4950120602c`  
		Last Modified: Thu, 15 Dec 2022 01:43:11 GMT  
		Size: 50.3 MB (50307535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada275e7aa3bc6bd371b6be3f1ef6dcac6834b4f46509ec553f82d0a11a99c7d`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a41675c125eaaed118c9dde533371b89db2e4b2696f8c19094c28a7abacbb5`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47c7189b5859a3f2c5de76587d49641731be19bb78cd9afdc0a7279d67dacd`  
		Last Modified: Thu, 15 Dec 2022 01:43:06 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:20f0cd1a902dd7195b8d4e7fee9efb484ef0737d6f5afc8d55e42ba7aa6fa0eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54991129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb6cdc64033df2ca740b9adb9fd850c3aa92f6b99292de33fea887909efdebe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Aug 2022 17:38:47 GMT
ADD file:d51bb92de86c49ee5486066d12194be78c8b9a8452c44577e2dfeef1945a0138 in / 
# Tue, 09 Aug 2022 17:38:47 GMT
CMD ["/bin/sh"]
# Thu, 15 Dec 2022 01:43:18 GMT
ARG CONSUL_VERSION=1.14.3
# Thu, 15 Dec 2022 01:43:19 GMT
LABEL org.opencontainers.image.authors=Consul Team <consul@hashicorp.com> org.opencontainers.image.url=https://www.consul.io/ org.opencontainers.image.documentation=https://www.consul.io/docs org.opencontainers.image.source=https://github.com/hashicorp/consul org.opencontainers.image.version=1.14.3 org.opencontainers.image.vendor=HashiCorp org.opencontainers.image.title=consul org.opencontainers.image.description=Consul is a datacenter runtime that provides service discovery, configuration, and orchestration.
# Thu, 15 Dec 2022 01:43:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 15 Dec 2022 01:43:21 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 15 Dec 2022 01:43:29 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq libc6-compat iptables tzdata &&     gpg --keyserver keyserver.ubuntu.com --recv-keys C874011F0AB405110D02105534365D9472D7468F &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /tmp/build consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cp /tmp/build/consul /bin/consul &&     if [ -f /tmp/build/EULA.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/EULA.txt /usr/share/doc/consul/EULA.txt; fi &&     if [ -f /tmp/build/TermsOfEvaluation.txt ]; then mkdir -p /usr/share/doc/consul; mv /tmp/build/TermsOfEvaluation.txt /usr/share/doc/consul/TermsOfEvaluation.txt; fi &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill all &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 15 Dec 2022 01:43:29 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 15 Dec 2022 01:43:30 GMT
# ARGS: CONSUL_VERSION=1.14.3
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 15 Dec 2022 01:43:31 GMT
VOLUME [/consul/data]
# Thu, 15 Dec 2022 01:43:32 GMT
EXPOSE 8300
# Thu, 15 Dec 2022 01:43:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 15 Dec 2022 01:43:34 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 15 Dec 2022 01:43:36 GMT
COPY file:54fea1810b618dd421534c8fbe34fd9d05aa23929d2290f19c325d1c23d960c3 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 15 Dec 2022 01:43:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Dec 2022 01:43:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f8c6eeaa55b0f135b7fddb3d7745a98ca4d8f06d2898611234b9ef99e1183073`  
		Last Modified: Tue, 09 Aug 2022 17:39:50 GMT  
		Size: 2.8 MB (2828516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329a78585fb4644b68ccd8dd0a5c118837f342c281ed9b74a87be366844095c`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33040af0803f61c89587cbebad9ce2ea09385072ae8c7a6b5dd38ba4edf2de0a`  
		Last Modified: Thu, 15 Dec 2022 01:44:57 GMT  
		Size: 52.2 MB (52159283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfd669ac85cff69517593049dcff0f6cba03db3c74b16a0a6f83443cb4eb230`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7128ed833e81381c5f9c0f2fe4b6a0bb4f39685d1a7240ad192040dbcd1b625b`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7980ddcce16e98ddfd78b044931f7d3b6b43c2e4116a2df676cc1bca6111c92`  
		Last Modified: Thu, 15 Dec 2022 01:44:52 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
