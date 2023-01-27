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
