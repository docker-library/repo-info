<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.9`](#docker299)
-	[`docker:29.9-cli`](#docker299-cli)
-	[`docker:29.9-dind`](#docker299-dind)
-	[`docker:29.9-dind-rootless`](#docker299-dind-rootless)
-	[`docker:29.9-windowsservercore`](#docker299-windowsservercore)
-	[`docker:29.9-windowsservercore-ltsc2022`](#docker299-windowsservercore-ltsc2022)
-	[`docker:29.9-windowsservercore-ltsc2025`](#docker299-windowsservercore-ltsc2025)
-	[`docker:29.9.1`](#docker2991)
-	[`docker:29.9.1-alpine3.24`](#docker2991-alpine324)
-	[`docker:29.9.1-cli`](#docker2991-cli)
-	[`docker:29.9.1-cli-alpine3.24`](#docker2991-cli-alpine324)
-	[`docker:29.9.1-dind`](#docker2991-dind)
-	[`docker:29.9.1-dind-alpine3.24`](#docker2991-dind-alpine324)
-	[`docker:29.9.1-dind-rootless`](#docker2991-dind-rootless)
-	[`docker:29.9.1-windowsservercore`](#docker2991-windowsservercore)
-	[`docker:29.9.1-windowsservercore-ltsc2022`](#docker2991-windowsservercore-ltsc2022)
-	[`docker:29.9.1-windowsservercore-ltsc2025`](#docker2991-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:0b6d18a4a222e71c88be6034926b4f6cde2fc33c2218643d03ccfddc65995470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29` - linux; amd64

```console
$ docker pull docker@sha256:4c42359ca23de31b73b7a58396a9ca1f3b9c8e0ffbb309f34c3b14c12d889d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124560587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6d6ea5ca348694849364514e436202092c36d6a0b4040b0ca64937799046d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:bf3a34bdd535548b17f67268c5b7deec2c324a9341964ccf0c0f58cd0c54d13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79113a7571d08b26657a5220f62cba10e0236829cfba0c12df2de6678d5882`

```dockerfile
```

-	Layers:
	-	`sha256:1a77cba84911ac7ebdd1ae91faa4e41d8009aa1baf08d05a927f069c3d73e772`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 34.4 KB (34425 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:2decf0983544851895132f2f4d2045e4bf66f8faaa4ba9267f9f4407d870e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116908678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e207bcc3e8baa011eb1bbe4b2fba5c4d9a2eae230fecbe5eccf34b6c7c9e2879`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c57f5a148cc724d0efee555cb17076f48170cff16b79bf539cf306b1defd0`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 3.7 MB (3717199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05233302fe8b1892e15073ea53e04e5865ec3b1312c866c997c0341468eaca`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 79.9 KB (79853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7090acc8cf6e953381e5d74ebf6affd7012cbf5da6e3bec06bc5eb4964d403d`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484473af66443518c4f9577a064a07c765fd84f16873815be6426f259e6aa2e`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 49.5 MB (49507054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d2c212be812f99e947449bb829e57ff697a8c5d69b1282cca2f10471d0592`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db375b5f9a03c5dfe873a7af36555fd682fddea5d1a660c42ee06e6cd241b4f`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:6242d179b157b693bef39d0cf43f18c4939b7471d91017f094371772141cbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e042a39df72e470b6cd18efe589515b56dd13af721e768d80cc5cd0e2afb67f`

```dockerfile
```

-	Layers:
	-	`sha256:04207abfb39fd8fb7e08f3eab7b3a59172b2b51a439f07b141b1ca219742d2f2`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 34.6 KB (34604 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:061344f2a91d48d385af5e8732ba9eef2bf4bb12aaa2b1aff9dee63d65ba60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115439878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b4e36bb3321730555945b07dcd7d1223d7e0494ed8165542fae3b506b61c56`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:09:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe29fcee281bc31e07bf2f21902a36b7aa3375b21765d068432f33573979652`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 3.4 MB (3439058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b7e7c5468a49dcc1c7eccfb72ea6a0219bd0ff1663334b3c6ce5bfe3eaa17f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 76.2 KB (76205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd093f93b60dac660729b47f3bd38acee3f554b09a82547ffff9367efa78e44f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51e05cb667873b690af8acea5f509c8b7abc6de5fa9f423639b33489a4d06e`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 49.4 MB (49354156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb505891b7b920a7940a9b2feda1b32392af305a50a8a2dcc0e78e5127b09a5a`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8d80c9daa0f1a99213c0517f5ca4113a423f891189a2672f2555f48a7e379`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:bcea45e6cab84ca495e2e2ab80faf6c7037dbb1f374928b8a5dda244f81a74a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d9fcd5391244818a3c369d801902ac6056507c3fdc2050bdd6a9d8383a3be4`

```dockerfile
```

-	Layers:
	-	`sha256:a179d36972b4e10a0959018a60a79fb2fd26f56577d8bb65678bedf1c52f179c`  
		Last Modified: Fri, 09 Oct 2026 01:10:00 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0a02e01c20ef73e6060775ba3e33e415d289af3bfcf5b1b60e95674beb894875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115682487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78341604239c450067a5d7556cc8af6a42c0d0d6e64148dc8468ff20499399ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:444fc49b5a419265ea242d8866b469c8fbc63cb034f10c99d47b257fae4be486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7370cc5a80bd6939e79e796e1de48394db3543bd4bde18b1a229a702ea6f128`

```dockerfile
```

-	Layers:
	-	`sha256:71fcbca26de052036b003ccb5dfc35051a7c9e4c08d37e3885a8e293eb872cb7`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:1a4c7cb63513f349bdad01fcc6e0f3f2f67d37b9da86f14dc0d4a0942eecda00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-cli` - linux; amd64

```console
$ docker pull docker@sha256:4caa52207e95c68c3087006eefb3a5f6ca48ad1c0ba3aa3e6843549a0720b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67455445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b05a2da0862c60c19ec93d6956e81a3764628d39eb0f9f6d5c951d7592e058c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:c1009bb202f310fc81d11249792dd194479c0a1d796a9a9b1891e70555bb6f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904481e887573c9f6e1be938ef5a1aa718dcff1c2ee60e649781e4e77918d2c0`

```dockerfile
```

-	Layers:
	-	`sha256:11c5b31d1e9b11017ebe0c2188b02e5c85f10bbed7497535e09c09ba5ab9e88f`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 38.1 KB (38055 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:fe56a0557c857391714813537b194081a90f15416c966ab34f1e98118f11f38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63598569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2527fb1b07e3b3157e1954a58b8054f0213fac1ff390e8b8c9a7de6331084add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:7f30ca99f31c4ed9a93aa64ba8aa9e2c719f606ab45d86d782686002548bc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de243b30c5bf1d341272ec39d0bb07144d61874f269f035f44571a1ffe5314d4`

```dockerfile
```

-	Layers:
	-	`sha256:79d7381609a526f1290a44e55023bec6d6d6cd89f0f8aa6a6f6793e3d62cc701`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4f912988442f57fdb1dcabf15790a5ee3643180cdd8527ef32fcbe33dbda7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62564457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be947ff32cc19e4b499935b90a50ebbd464dc25450eedd1a61126f16ec65ed67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:abe2964def82d0c70ed09576cb65f313fd1fb23619133b95c1ce5a4d03b6f285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5306d83f4c179ef8c676354786377e89a5583f887585529557d6b436704ae1d8`

```dockerfile
```

-	Layers:
	-	`sha256:0338e5b3606a49572e49025b197ec8ef4572e65423cde0793c07037f540e43c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b840c948ec2a78bf90a99e713f7ad711c0dea887a86723fba3d47703dfe43506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62967007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbab55dff9093e87d3956ba181fec892b8a5ae486018bd044f5c69c8c5359ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ab8b70198d5728546735a1d51f52b6a9dede918431ce1902c59b13ba14e62b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c98b68c6695715ee57dd288ec2a028b5ccbbd56e9b2d4ab35963d4fa29c2a8f`

```dockerfile
```

-	Layers:
	-	`sha256:89ec36ca436e97f4976a60e35c3b27bc47417369350577ddcf5aa702805cacd9`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:0b6d18a4a222e71c88be6034926b4f6cde2fc33c2218643d03ccfddc65995470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind` - linux; amd64

```console
$ docker pull docker@sha256:4c42359ca23de31b73b7a58396a9ca1f3b9c8e0ffbb309f34c3b14c12d889d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124560587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6d6ea5ca348694849364514e436202092c36d6a0b4040b0ca64937799046d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf3a34bdd535548b17f67268c5b7deec2c324a9341964ccf0c0f58cd0c54d13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79113a7571d08b26657a5220f62cba10e0236829cfba0c12df2de6678d5882`

```dockerfile
```

-	Layers:
	-	`sha256:1a77cba84911ac7ebdd1ae91faa4e41d8009aa1baf08d05a927f069c3d73e772`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 34.4 KB (34425 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:2decf0983544851895132f2f4d2045e4bf66f8faaa4ba9267f9f4407d870e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116908678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e207bcc3e8baa011eb1bbe4b2fba5c4d9a2eae230fecbe5eccf34b6c7c9e2879`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c57f5a148cc724d0efee555cb17076f48170cff16b79bf539cf306b1defd0`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 3.7 MB (3717199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05233302fe8b1892e15073ea53e04e5865ec3b1312c866c997c0341468eaca`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 79.9 KB (79853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7090acc8cf6e953381e5d74ebf6affd7012cbf5da6e3bec06bc5eb4964d403d`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484473af66443518c4f9577a064a07c765fd84f16873815be6426f259e6aa2e`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 49.5 MB (49507054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d2c212be812f99e947449bb829e57ff697a8c5d69b1282cca2f10471d0592`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db375b5f9a03c5dfe873a7af36555fd682fddea5d1a660c42ee06e6cd241b4f`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6242d179b157b693bef39d0cf43f18c4939b7471d91017f094371772141cbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e042a39df72e470b6cd18efe589515b56dd13af721e768d80cc5cd0e2afb67f`

```dockerfile
```

-	Layers:
	-	`sha256:04207abfb39fd8fb7e08f3eab7b3a59172b2b51a439f07b141b1ca219742d2f2`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 34.6 KB (34604 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:061344f2a91d48d385af5e8732ba9eef2bf4bb12aaa2b1aff9dee63d65ba60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115439878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b4e36bb3321730555945b07dcd7d1223d7e0494ed8165542fae3b506b61c56`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:09:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe29fcee281bc31e07bf2f21902a36b7aa3375b21765d068432f33573979652`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 3.4 MB (3439058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b7e7c5468a49dcc1c7eccfb72ea6a0219bd0ff1663334b3c6ce5bfe3eaa17f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 76.2 KB (76205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd093f93b60dac660729b47f3bd38acee3f554b09a82547ffff9367efa78e44f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51e05cb667873b690af8acea5f509c8b7abc6de5fa9f423639b33489a4d06e`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 49.4 MB (49354156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb505891b7b920a7940a9b2feda1b32392af305a50a8a2dcc0e78e5127b09a5a`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8d80c9daa0f1a99213c0517f5ca4113a423f891189a2672f2555f48a7e379`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bcea45e6cab84ca495e2e2ab80faf6c7037dbb1f374928b8a5dda244f81a74a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d9fcd5391244818a3c369d801902ac6056507c3fdc2050bdd6a9d8383a3be4`

```dockerfile
```

-	Layers:
	-	`sha256:a179d36972b4e10a0959018a60a79fb2fd26f56577d8bb65678bedf1c52f179c`  
		Last Modified: Fri, 09 Oct 2026 01:10:00 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0a02e01c20ef73e6060775ba3e33e415d289af3bfcf5b1b60e95674beb894875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115682487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78341604239c450067a5d7556cc8af6a42c0d0d6e64148dc8468ff20499399ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:444fc49b5a419265ea242d8866b469c8fbc63cb034f10c99d47b257fae4be486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7370cc5a80bd6939e79e796e1de48394db3543bd4bde18b1a229a702ea6f128`

```dockerfile
```

-	Layers:
	-	`sha256:71fcbca26de052036b003ccb5dfc35051a7c9e4c08d37e3885a8e293eb872cb7`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:54155db4950e2f9af3bb829fcfe627030576fc7ae235018be63175fca7326171
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:4a4f17776735e69e4d379a924676324bb8ff9a7293a21170316877ce7041e57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140366365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0c5dec768b135ae65cb07d4d653d40932ddb0b05e1d5238b68e7bab2304ccb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
# Fri, 09 Oct 2026 02:10:13 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 09 Oct 2026 02:10:14 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c53d90e03cdc6f847140bccffddf8759988c116495fda5854aaab746be21e8`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d0ab2bbce3842e00ed9fb8aa3cade3c4a068ba464df7620a2c61324b6fc1e`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248ac7cfc7da35d891db51a1b5c5760382755829f15923a2af3c6b3863cf1fd2`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d787457fa319d6a4ef67df1f4c7a18615b05d0726e708d4fb43df28843111f`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 12.2 MB (12178100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a263ae42cbf987bea4290b1f3311ac2f19265c49e181ee679b3d11ddfd0c73fe`  
		Last Modified: Fri, 09 Oct 2026 02:10:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:2bc00fa89e39fa732a8304fc18f8e863555d1c09f6666f1a07adf2056163302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e557bb646e53c1c73e24aaafd2fd390449091d393025b0a9afd848ce901f15`

```dockerfile
```

-	Layers:
	-	`sha256:c7fd0a1fc3ad5501dd1537034453d294c14aca118169a6abd86dab61a26756c1`  
		Last Modified: Fri, 09 Oct 2026 02:10:19 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dcba44d8bdc81206fd289696af0bd4a8422a7605aca40262e6d3bfea576c7f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130600775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a926d50c292fc062f041ceadd6476ac15c8caad57cf3874ad064da03af02f6ee`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
# Fri, 09 Oct 2026 02:09:33 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 09 Oct 2026 02:09:34 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 09 Oct 2026 02:09:34 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 09 Oct 2026 02:09:34 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf7465f16062df50cd8806dab5de9c8d166ba9bfb94ba94aac34f41f22ccbe4`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 3.6 MB (3611370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43529abed08d5e2373b7df6cb435c3e0ac882b539416f5c5527aa7dda4b6b94`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2b64448151c1dcdcc7b117868306bcd78721552196232aebd30ed8cd7929d4`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefb49027900d1a45e101440a157e278848a4b3914bd144e1772fc47b20203de`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 11.3 MB (11305576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74ae732abde6009e81df50814edcbecd2153aaa1b7f25ba7c3947b09b772a8`  
		Last Modified: Fri, 09 Oct 2026 02:09:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:0f5841f1bcba1ec449447b0ea991c6e5035bc9d89bf5457f069f3444cb05d28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4383b5f1d2f73b9425b0866710606d6f43b9065bd2a0060bec4910da6febe049`

```dockerfile
```

-	Layers:
	-	`sha256:02951387c96b9ac66d39d0c726f29ecd30707dd2919a7bcbcaf4af085222b2d4`  
		Last Modified: Fri, 09 Oct 2026 02:09:38 GMT  
		Size: 30.7 KB (30655 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:64852b7bac2e22adcab59cb421599dc5f464010ad8c53a3046a1b59a7978ae1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:9f47a41f4eb790d7f9f4ed644ffffb5173bb592fade5faceb1a019beb72152b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284238159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9d96f894cd7594ac89a8d719c754bc9df286b90709cf7ad89ff54eec01f8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:56:45 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 22:56:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 22:56:57 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 22:57:05 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 22:57:07 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 22:57:14 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f38e833cda7fbc0e9fe500ffcda99c7ef6441114caafde722a8361c59a4e1f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a62ad06c6cbc8be8da10bd0379dda5defb49b168d5d589091619fe9c88e00aa`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc7e0ac3e0bc2553a1a21cce7afa4f7663196ae681e54920714218922c37f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4cf97d0719cfb34391f76d255cb7f4a2e1f4c69404ca664ef7b11675c6a38`  
		Last Modified: Tue, 13 Oct 2026 22:57:24 GMT  
		Size: 20.9 MB (20916250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5837af768cbdfd50cf34d650f392c76b6e3889880126a31a73b0deb8271eafdf`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ad5437b9bcebbe1a22bc271b768cd2bf472ed3f318176135afe7e0f7a019b`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21492d30694c9904afc97292faadbff555197638424e24033f51b3076da5109`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bc7c6e7b0b01901766b70bfacc4fd27765337d9566374a8224d5b289d08a09`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 24.7 MB (24744822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12ec6ce165782d69fe533d4ce5d31f4ce5fcf10580a15b2f70c52fe2189c149`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee972a2173d102863de8872fbe0dc3f7eba7bdddda1fa7e15dd04a0477422b`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09459a03c86f42a1ea73515715d54bd45ed3183bd313738fc43e6848cfb2cbaa`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882dca9afba62568a108c52ecd8ba988a6e3195c1ed9664f45f1b24957f0ed3`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 11.9 MB (11941369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:b20166450d0c3573bec9ace87b2b97101765a202e4f1aa73333892643be6713a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:9f47a41f4eb790d7f9f4ed644ffffb5173bb592fade5faceb1a019beb72152b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284238159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9d96f894cd7594ac89a8d719c754bc9df286b90709cf7ad89ff54eec01f8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:56:45 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 22:56:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 22:56:57 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 22:57:05 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 22:57:07 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 22:57:14 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f38e833cda7fbc0e9fe500ffcda99c7ef6441114caafde722a8361c59a4e1f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a62ad06c6cbc8be8da10bd0379dda5defb49b168d5d589091619fe9c88e00aa`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc7e0ac3e0bc2553a1a21cce7afa4f7663196ae681e54920714218922c37f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4cf97d0719cfb34391f76d255cb7f4a2e1f4c69404ca664ef7b11675c6a38`  
		Last Modified: Tue, 13 Oct 2026 22:57:24 GMT  
		Size: 20.9 MB (20916250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5837af768cbdfd50cf34d650f392c76b6e3889880126a31a73b0deb8271eafdf`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ad5437b9bcebbe1a22bc271b768cd2bf472ed3f318176135afe7e0f7a019b`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21492d30694c9904afc97292faadbff555197638424e24033f51b3076da5109`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bc7c6e7b0b01901766b70bfacc4fd27765337d9566374a8224d5b289d08a09`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 24.7 MB (24744822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12ec6ce165782d69fe533d4ce5d31f4ce5fcf10580a15b2f70c52fe2189c149`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee972a2173d102863de8872fbe0dc3f7eba7bdddda1fa7e15dd04a0477422b`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09459a03c86f42a1ea73515715d54bd45ed3183bd313738fc43e6848cfb2cbaa`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882dca9afba62568a108c52ecd8ba988a6e3195c1ed9664f45f1b24957f0ed3`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 11.9 MB (11941369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:edf4d961a3dbf52574e5898e0907cafd43dbd24b2241ca7d671cc67557139314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9`

```console
$ docker pull docker@sha256:0b6d18a4a222e71c88be6034926b4f6cde2fc33c2218643d03ccfddc65995470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9` - linux; amd64

```console
$ docker pull docker@sha256:4c42359ca23de31b73b7a58396a9ca1f3b9c8e0ffbb309f34c3b14c12d889d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124560587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6d6ea5ca348694849364514e436202092c36d6a0b4040b0ca64937799046d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:bf3a34bdd535548b17f67268c5b7deec2c324a9341964ccf0c0f58cd0c54d13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79113a7571d08b26657a5220f62cba10e0236829cfba0c12df2de6678d5882`

```dockerfile
```

-	Layers:
	-	`sha256:1a77cba84911ac7ebdd1ae91faa4e41d8009aa1baf08d05a927f069c3d73e772`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 34.4 KB (34425 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v6

```console
$ docker pull docker@sha256:2decf0983544851895132f2f4d2045e4bf66f8faaa4ba9267f9f4407d870e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116908678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e207bcc3e8baa011eb1bbe4b2fba5c4d9a2eae230fecbe5eccf34b6c7c9e2879`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c57f5a148cc724d0efee555cb17076f48170cff16b79bf539cf306b1defd0`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 3.7 MB (3717199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05233302fe8b1892e15073ea53e04e5865ec3b1312c866c997c0341468eaca`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 79.9 KB (79853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7090acc8cf6e953381e5d74ebf6affd7012cbf5da6e3bec06bc5eb4964d403d`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484473af66443518c4f9577a064a07c765fd84f16873815be6426f259e6aa2e`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 49.5 MB (49507054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d2c212be812f99e947449bb829e57ff697a8c5d69b1282cca2f10471d0592`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db375b5f9a03c5dfe873a7af36555fd682fddea5d1a660c42ee06e6cd241b4f`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:6242d179b157b693bef39d0cf43f18c4939b7471d91017f094371772141cbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e042a39df72e470b6cd18efe589515b56dd13af721e768d80cc5cd0e2afb67f`

```dockerfile
```

-	Layers:
	-	`sha256:04207abfb39fd8fb7e08f3eab7b3a59172b2b51a439f07b141b1ca219742d2f2`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 34.6 KB (34604 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v7

```console
$ docker pull docker@sha256:061344f2a91d48d385af5e8732ba9eef2bf4bb12aaa2b1aff9dee63d65ba60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115439878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b4e36bb3321730555945b07dcd7d1223d7e0494ed8165542fae3b506b61c56`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:09:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe29fcee281bc31e07bf2f21902a36b7aa3375b21765d068432f33573979652`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 3.4 MB (3439058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b7e7c5468a49dcc1c7eccfb72ea6a0219bd0ff1663334b3c6ce5bfe3eaa17f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 76.2 KB (76205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd093f93b60dac660729b47f3bd38acee3f554b09a82547ffff9367efa78e44f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51e05cb667873b690af8acea5f509c8b7abc6de5fa9f423639b33489a4d06e`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 49.4 MB (49354156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb505891b7b920a7940a9b2feda1b32392af305a50a8a2dcc0e78e5127b09a5a`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8d80c9daa0f1a99213c0517f5ca4113a423f891189a2672f2555f48a7e379`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:bcea45e6cab84ca495e2e2ab80faf6c7037dbb1f374928b8a5dda244f81a74a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d9fcd5391244818a3c369d801902ac6056507c3fdc2050bdd6a9d8383a3be4`

```dockerfile
```

-	Layers:
	-	`sha256:a179d36972b4e10a0959018a60a79fb2fd26f56577d8bb65678bedf1c52f179c`  
		Last Modified: Fri, 09 Oct 2026 01:10:00 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0a02e01c20ef73e6060775ba3e33e415d289af3bfcf5b1b60e95674beb894875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115682487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78341604239c450067a5d7556cc8af6a42c0d0d6e64148dc8468ff20499399ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:444fc49b5a419265ea242d8866b469c8fbc63cb034f10c99d47b257fae4be486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7370cc5a80bd6939e79e796e1de48394db3543bd4bde18b1a229a702ea6f128`

```dockerfile
```

-	Layers:
	-	`sha256:71fcbca26de052036b003ccb5dfc35051a7c9e4c08d37e3885a8e293eb872cb7`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-cli`

```console
$ docker pull docker@sha256:1a4c7cb63513f349bdad01fcc6e0f3f2f67d37b9da86f14dc0d4a0942eecda00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9-cli` - linux; amd64

```console
$ docker pull docker@sha256:4caa52207e95c68c3087006eefb3a5f6ca48ad1c0ba3aa3e6843549a0720b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67455445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b05a2da0862c60c19ec93d6956e81a3764628d39eb0f9f6d5c951d7592e058c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:c1009bb202f310fc81d11249792dd194479c0a1d796a9a9b1891e70555bb6f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904481e887573c9f6e1be938ef5a1aa718dcff1c2ee60e649781e4e77918d2c0`

```dockerfile
```

-	Layers:
	-	`sha256:11c5b31d1e9b11017ebe0c2188b02e5c85f10bbed7497535e09c09ba5ab9e88f`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 38.1 KB (38055 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:fe56a0557c857391714813537b194081a90f15416c966ab34f1e98118f11f38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63598569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2527fb1b07e3b3157e1954a58b8054f0213fac1ff390e8b8c9a7de6331084add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:7f30ca99f31c4ed9a93aa64ba8aa9e2c719f606ab45d86d782686002548bc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de243b30c5bf1d341272ec39d0bb07144d61874f269f035f44571a1ffe5314d4`

```dockerfile
```

-	Layers:
	-	`sha256:79d7381609a526f1290a44e55023bec6d6d6cd89f0f8aa6a6f6793e3d62cc701`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4f912988442f57fdb1dcabf15790a5ee3643180cdd8527ef32fcbe33dbda7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62564457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be947ff32cc19e4b499935b90a50ebbd464dc25450eedd1a61126f16ec65ed67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:abe2964def82d0c70ed09576cb65f313fd1fb23619133b95c1ce5a4d03b6f285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5306d83f4c179ef8c676354786377e89a5583f887585529557d6b436704ae1d8`

```dockerfile
```

-	Layers:
	-	`sha256:0338e5b3606a49572e49025b197ec8ef4572e65423cde0793c07037f540e43c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b840c948ec2a78bf90a99e713f7ad711c0dea887a86723fba3d47703dfe43506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62967007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbab55dff9093e87d3956ba181fec892b8a5ae486018bd044f5c69c8c5359ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ab8b70198d5728546735a1d51f52b6a9dede918431ce1902c59b13ba14e62b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c98b68c6695715ee57dd288ec2a028b5ccbbd56e9b2d4ab35963d4fa29c2a8f`

```dockerfile
```

-	Layers:
	-	`sha256:89ec36ca436e97f4976a60e35c3b27bc47417369350577ddcf5aa702805cacd9`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind`

```console
$ docker pull docker@sha256:0b6d18a4a222e71c88be6034926b4f6cde2fc33c2218643d03ccfddc65995470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9-dind` - linux; amd64

```console
$ docker pull docker@sha256:4c42359ca23de31b73b7a58396a9ca1f3b9c8e0ffbb309f34c3b14c12d889d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124560587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6d6ea5ca348694849364514e436202092c36d6a0b4040b0ca64937799046d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf3a34bdd535548b17f67268c5b7deec2c324a9341964ccf0c0f58cd0c54d13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79113a7571d08b26657a5220f62cba10e0236829cfba0c12df2de6678d5882`

```dockerfile
```

-	Layers:
	-	`sha256:1a77cba84911ac7ebdd1ae91faa4e41d8009aa1baf08d05a927f069c3d73e772`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 34.4 KB (34425 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:2decf0983544851895132f2f4d2045e4bf66f8faaa4ba9267f9f4407d870e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116908678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e207bcc3e8baa011eb1bbe4b2fba5c4d9a2eae230fecbe5eccf34b6c7c9e2879`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c57f5a148cc724d0efee555cb17076f48170cff16b79bf539cf306b1defd0`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 3.7 MB (3717199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05233302fe8b1892e15073ea53e04e5865ec3b1312c866c997c0341468eaca`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 79.9 KB (79853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7090acc8cf6e953381e5d74ebf6affd7012cbf5da6e3bec06bc5eb4964d403d`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484473af66443518c4f9577a064a07c765fd84f16873815be6426f259e6aa2e`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 49.5 MB (49507054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d2c212be812f99e947449bb829e57ff697a8c5d69b1282cca2f10471d0592`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db375b5f9a03c5dfe873a7af36555fd682fddea5d1a660c42ee06e6cd241b4f`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6242d179b157b693bef39d0cf43f18c4939b7471d91017f094371772141cbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e042a39df72e470b6cd18efe589515b56dd13af721e768d80cc5cd0e2afb67f`

```dockerfile
```

-	Layers:
	-	`sha256:04207abfb39fd8fb7e08f3eab7b3a59172b2b51a439f07b141b1ca219742d2f2`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 34.6 KB (34604 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:061344f2a91d48d385af5e8732ba9eef2bf4bb12aaa2b1aff9dee63d65ba60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115439878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b4e36bb3321730555945b07dcd7d1223d7e0494ed8165542fae3b506b61c56`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:09:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe29fcee281bc31e07bf2f21902a36b7aa3375b21765d068432f33573979652`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 3.4 MB (3439058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b7e7c5468a49dcc1c7eccfb72ea6a0219bd0ff1663334b3c6ce5bfe3eaa17f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 76.2 KB (76205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd093f93b60dac660729b47f3bd38acee3f554b09a82547ffff9367efa78e44f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51e05cb667873b690af8acea5f509c8b7abc6de5fa9f423639b33489a4d06e`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 49.4 MB (49354156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb505891b7b920a7940a9b2feda1b32392af305a50a8a2dcc0e78e5127b09a5a`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8d80c9daa0f1a99213c0517f5ca4113a423f891189a2672f2555f48a7e379`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bcea45e6cab84ca495e2e2ab80faf6c7037dbb1f374928b8a5dda244f81a74a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d9fcd5391244818a3c369d801902ac6056507c3fdc2050bdd6a9d8383a3be4`

```dockerfile
```

-	Layers:
	-	`sha256:a179d36972b4e10a0959018a60a79fb2fd26f56577d8bb65678bedf1c52f179c`  
		Last Modified: Fri, 09 Oct 2026 01:10:00 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0a02e01c20ef73e6060775ba3e33e415d289af3bfcf5b1b60e95674beb894875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115682487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78341604239c450067a5d7556cc8af6a42c0d0d6e64148dc8468ff20499399ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:444fc49b5a419265ea242d8866b469c8fbc63cb034f10c99d47b257fae4be486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7370cc5a80bd6939e79e796e1de48394db3543bd4bde18b1a229a702ea6f128`

```dockerfile
```

-	Layers:
	-	`sha256:71fcbca26de052036b003ccb5dfc35051a7c9e4c08d37e3885a8e293eb872cb7`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind-rootless`

```console
$ docker pull docker@sha256:54155db4950e2f9af3bb829fcfe627030576fc7ae235018be63175fca7326171
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:4a4f17776735e69e4d379a924676324bb8ff9a7293a21170316877ce7041e57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140366365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0c5dec768b135ae65cb07d4d653d40932ddb0b05e1d5238b68e7bab2304ccb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
# Fri, 09 Oct 2026 02:10:13 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 09 Oct 2026 02:10:14 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c53d90e03cdc6f847140bccffddf8759988c116495fda5854aaab746be21e8`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d0ab2bbce3842e00ed9fb8aa3cade3c4a068ba464df7620a2c61324b6fc1e`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248ac7cfc7da35d891db51a1b5c5760382755829f15923a2af3c6b3863cf1fd2`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d787457fa319d6a4ef67df1f4c7a18615b05d0726e708d4fb43df28843111f`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 12.2 MB (12178100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a263ae42cbf987bea4290b1f3311ac2f19265c49e181ee679b3d11ddfd0c73fe`  
		Last Modified: Fri, 09 Oct 2026 02:10:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:2bc00fa89e39fa732a8304fc18f8e863555d1c09f6666f1a07adf2056163302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e557bb646e53c1c73e24aaafd2fd390449091d393025b0a9afd848ce901f15`

```dockerfile
```

-	Layers:
	-	`sha256:c7fd0a1fc3ad5501dd1537034453d294c14aca118169a6abd86dab61a26756c1`  
		Last Modified: Fri, 09 Oct 2026 02:10:19 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dcba44d8bdc81206fd289696af0bd4a8422a7605aca40262e6d3bfea576c7f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130600775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a926d50c292fc062f041ceadd6476ac15c8caad57cf3874ad064da03af02f6ee`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
# Fri, 09 Oct 2026 02:09:33 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 09 Oct 2026 02:09:34 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 09 Oct 2026 02:09:34 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 09 Oct 2026 02:09:34 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf7465f16062df50cd8806dab5de9c8d166ba9bfb94ba94aac34f41f22ccbe4`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 3.6 MB (3611370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43529abed08d5e2373b7df6cb435c3e0ac882b539416f5c5527aa7dda4b6b94`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2b64448151c1dcdcc7b117868306bcd78721552196232aebd30ed8cd7929d4`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefb49027900d1a45e101440a157e278848a4b3914bd144e1772fc47b20203de`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 11.3 MB (11305576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74ae732abde6009e81df50814edcbecd2153aaa1b7f25ba7c3947b09b772a8`  
		Last Modified: Fri, 09 Oct 2026 02:09:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:0f5841f1bcba1ec449447b0ea991c6e5035bc9d89bf5457f069f3444cb05d28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4383b5f1d2f73b9425b0866710606d6f43b9065bd2a0060bec4910da6febe049`

```dockerfile
```

-	Layers:
	-	`sha256:02951387c96b9ac66d39d0c726f29ecd30707dd2919a7bcbcaf4af085222b2d4`  
		Last Modified: Fri, 09 Oct 2026 02:09:38 GMT  
		Size: 30.7 KB (30655 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-windowsservercore`

```console
$ docker pull docker@sha256:64852b7bac2e22adcab59cb421599dc5f464010ad8c53a3046a1b59a7978ae1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:29.9-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:9f47a41f4eb790d7f9f4ed644ffffb5173bb592fade5faceb1a019beb72152b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284238159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9d96f894cd7594ac89a8d719c754bc9df286b90709cf7ad89ff54eec01f8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:56:45 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 22:56:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 22:56:57 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 22:57:05 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 22:57:07 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 22:57:14 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f38e833cda7fbc0e9fe500ffcda99c7ef6441114caafde722a8361c59a4e1f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a62ad06c6cbc8be8da10bd0379dda5defb49b168d5d589091619fe9c88e00aa`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc7e0ac3e0bc2553a1a21cce7afa4f7663196ae681e54920714218922c37f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4cf97d0719cfb34391f76d255cb7f4a2e1f4c69404ca664ef7b11675c6a38`  
		Last Modified: Tue, 13 Oct 2026 22:57:24 GMT  
		Size: 20.9 MB (20916250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5837af768cbdfd50cf34d650f392c76b6e3889880126a31a73b0deb8271eafdf`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ad5437b9bcebbe1a22bc271b768cd2bf472ed3f318176135afe7e0f7a019b`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21492d30694c9904afc97292faadbff555197638424e24033f51b3076da5109`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bc7c6e7b0b01901766b70bfacc4fd27765337d9566374a8224d5b289d08a09`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 24.7 MB (24744822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12ec6ce165782d69fe533d4ce5d31f4ce5fcf10580a15b2f70c52fe2189c149`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee972a2173d102863de8872fbe0dc3f7eba7bdddda1fa7e15dd04a0477422b`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09459a03c86f42a1ea73515715d54bd45ed3183bd313738fc43e6848cfb2cbaa`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882dca9afba62568a108c52ecd8ba988a6e3195c1ed9664f45f1b24957f0ed3`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 11.9 MB (11941369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:b20166450d0c3573bec9ace87b2b97101765a202e4f1aa73333892643be6713a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:29.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:9f47a41f4eb790d7f9f4ed644ffffb5173bb592fade5faceb1a019beb72152b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284238159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9d96f894cd7594ac89a8d719c754bc9df286b90709cf7ad89ff54eec01f8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:56:45 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 22:56:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 22:56:57 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 22:57:05 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 22:57:07 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 22:57:14 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f38e833cda7fbc0e9fe500ffcda99c7ef6441114caafde722a8361c59a4e1f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a62ad06c6cbc8be8da10bd0379dda5defb49b168d5d589091619fe9c88e00aa`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc7e0ac3e0bc2553a1a21cce7afa4f7663196ae681e54920714218922c37f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4cf97d0719cfb34391f76d255cb7f4a2e1f4c69404ca664ef7b11675c6a38`  
		Last Modified: Tue, 13 Oct 2026 22:57:24 GMT  
		Size: 20.9 MB (20916250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5837af768cbdfd50cf34d650f392c76b6e3889880126a31a73b0deb8271eafdf`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ad5437b9bcebbe1a22bc271b768cd2bf472ed3f318176135afe7e0f7a019b`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21492d30694c9904afc97292faadbff555197638424e24033f51b3076da5109`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bc7c6e7b0b01901766b70bfacc4fd27765337d9566374a8224d5b289d08a09`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 24.7 MB (24744822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12ec6ce165782d69fe533d4ce5d31f4ce5fcf10580a15b2f70c52fe2189c149`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee972a2173d102863de8872fbe0dc3f7eba7bdddda1fa7e15dd04a0477422b`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09459a03c86f42a1ea73515715d54bd45ed3183bd313738fc43e6848cfb2cbaa`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882dca9afba62568a108c52ecd8ba988a6e3195c1ed9664f45f1b24957f0ed3`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 11.9 MB (11941369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:edf4d961a3dbf52574e5898e0907cafd43dbd24b2241ca7d671cc67557139314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:29.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.1`

**does not exist** (yet?)

## `docker:29.9.1-alpine3.24`

**does not exist** (yet?)

## `docker:29.9.1-cli`

**does not exist** (yet?)

## `docker:29.9.1-cli-alpine3.24`

**does not exist** (yet?)

## `docker:29.9.1-dind`

**does not exist** (yet?)

## `docker:29.9.1-dind-alpine3.24`

**does not exist** (yet?)

## `docker:29.9.1-dind-rootless`

**does not exist** (yet?)

## `docker:29.9.1-windowsservercore`

**does not exist** (yet?)

## `docker:29.9.1-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `docker:29.9.1-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `docker:cli`

```console
$ docker pull docker@sha256:1a4c7cb63513f349bdad01fcc6e0f3f2f67d37b9da86f14dc0d4a0942eecda00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:cli` - linux; amd64

```console
$ docker pull docker@sha256:4caa52207e95c68c3087006eefb3a5f6ca48ad1c0ba3aa3e6843549a0720b7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67455445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b05a2da0862c60c19ec93d6956e81a3764628d39eb0f9f6d5c951d7592e058c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:c1009bb202f310fc81d11249792dd194479c0a1d796a9a9b1891e70555bb6f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904481e887573c9f6e1be938ef5a1aa718dcff1c2ee60e649781e4e77918d2c0`

```dockerfile
```

-	Layers:
	-	`sha256:11c5b31d1e9b11017ebe0c2188b02e5c85f10bbed7497535e09c09ba5ab9e88f`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 38.1 KB (38055 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:fe56a0557c857391714813537b194081a90f15416c966ab34f1e98118f11f38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63598569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2527fb1b07e3b3157e1954a58b8054f0213fac1ff390e8b8c9a7de6331084add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:7f30ca99f31c4ed9a93aa64ba8aa9e2c719f606ab45d86d782686002548bc801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de243b30c5bf1d341272ec39d0bb07144d61874f269f035f44571a1ffe5314d4`

```dockerfile
```

-	Layers:
	-	`sha256:79d7381609a526f1290a44e55023bec6d6d6cd89f0f8aa6a6f6793e3d62cc701`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4f912988442f57fdb1dcabf15790a5ee3643180cdd8527ef32fcbe33dbda7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62564457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be947ff32cc19e4b499935b90a50ebbd464dc25450eedd1a61126f16ec65ed67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:abe2964def82d0c70ed09576cb65f313fd1fb23619133b95c1ce5a4d03b6f285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5306d83f4c179ef8c676354786377e89a5583f887585529557d6b436704ae1d8`

```dockerfile
```

-	Layers:
	-	`sha256:0338e5b3606a49572e49025b197ec8ef4572e65423cde0793c07037f540e43c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b840c948ec2a78bf90a99e713f7ad711c0dea887a86723fba3d47703dfe43506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62967007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbab55dff9093e87d3956ba181fec892b8a5ae486018bd044f5c69c8c5359ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:ab8b70198d5728546735a1d51f52b6a9dede918431ce1902c59b13ba14e62b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c98b68c6695715ee57dd288ec2a028b5ccbbd56e9b2d4ab35963d4fa29c2a8f`

```dockerfile
```

-	Layers:
	-	`sha256:89ec36ca436e97f4976a60e35c3b27bc47417369350577ddcf5aa702805cacd9`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:0b6d18a4a222e71c88be6034926b4f6cde2fc33c2218643d03ccfddc65995470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:4c42359ca23de31b73b7a58396a9ca1f3b9c8e0ffbb309f34c3b14c12d889d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124560587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6d6ea5ca348694849364514e436202092c36d6a0b4040b0ca64937799046d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf3a34bdd535548b17f67268c5b7deec2c324a9341964ccf0c0f58cd0c54d13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79113a7571d08b26657a5220f62cba10e0236829cfba0c12df2de6678d5882`

```dockerfile
```

-	Layers:
	-	`sha256:1a77cba84911ac7ebdd1ae91faa4e41d8009aa1baf08d05a927f069c3d73e772`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 34.4 KB (34425 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:2decf0983544851895132f2f4d2045e4bf66f8faaa4ba9267f9f4407d870e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116908678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e207bcc3e8baa011eb1bbe4b2fba5c4d9a2eae230fecbe5eccf34b6c7c9e2879`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c57f5a148cc724d0efee555cb17076f48170cff16b79bf539cf306b1defd0`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 3.7 MB (3717199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05233302fe8b1892e15073ea53e04e5865ec3b1312c866c997c0341468eaca`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 79.9 KB (79853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7090acc8cf6e953381e5d74ebf6affd7012cbf5da6e3bec06bc5eb4964d403d`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484473af66443518c4f9577a064a07c765fd84f16873815be6426f259e6aa2e`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 49.5 MB (49507054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d2c212be812f99e947449bb829e57ff697a8c5d69b1282cca2f10471d0592`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db375b5f9a03c5dfe873a7af36555fd682fddea5d1a660c42ee06e6cd241b4f`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:6242d179b157b693bef39d0cf43f18c4939b7471d91017f094371772141cbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e042a39df72e470b6cd18efe589515b56dd13af721e768d80cc5cd0e2afb67f`

```dockerfile
```

-	Layers:
	-	`sha256:04207abfb39fd8fb7e08f3eab7b3a59172b2b51a439f07b141b1ca219742d2f2`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 34.6 KB (34604 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:061344f2a91d48d385af5e8732ba9eef2bf4bb12aaa2b1aff9dee63d65ba60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115439878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b4e36bb3321730555945b07dcd7d1223d7e0494ed8165542fae3b506b61c56`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:09:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe29fcee281bc31e07bf2f21902a36b7aa3375b21765d068432f33573979652`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 3.4 MB (3439058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b7e7c5468a49dcc1c7eccfb72ea6a0219bd0ff1663334b3c6ce5bfe3eaa17f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 76.2 KB (76205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd093f93b60dac660729b47f3bd38acee3f554b09a82547ffff9367efa78e44f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51e05cb667873b690af8acea5f509c8b7abc6de5fa9f423639b33489a4d06e`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 49.4 MB (49354156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb505891b7b920a7940a9b2feda1b32392af305a50a8a2dcc0e78e5127b09a5a`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8d80c9daa0f1a99213c0517f5ca4113a423f891189a2672f2555f48a7e379`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:bcea45e6cab84ca495e2e2ab80faf6c7037dbb1f374928b8a5dda244f81a74a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d9fcd5391244818a3c369d801902ac6056507c3fdc2050bdd6a9d8383a3be4`

```dockerfile
```

-	Layers:
	-	`sha256:a179d36972b4e10a0959018a60a79fb2fd26f56577d8bb65678bedf1c52f179c`  
		Last Modified: Fri, 09 Oct 2026 01:10:00 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0a02e01c20ef73e6060775ba3e33e415d289af3bfcf5b1b60e95674beb894875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115682487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78341604239c450067a5d7556cc8af6a42c0d0d6e64148dc8468ff20499399ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:444fc49b5a419265ea242d8866b469c8fbc63cb034f10c99d47b257fae4be486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7370cc5a80bd6939e79e796e1de48394db3543bd4bde18b1a229a702ea6f128`

```dockerfile
```

-	Layers:
	-	`sha256:71fcbca26de052036b003ccb5dfc35051a7c9e4c08d37e3885a8e293eb872cb7`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:54155db4950e2f9af3bb829fcfe627030576fc7ae235018be63175fca7326171
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:4a4f17776735e69e4d379a924676324bb8ff9a7293a21170316877ce7041e57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140366365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0c5dec768b135ae65cb07d4d653d40932ddb0b05e1d5238b68e7bab2304ccb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
# Fri, 09 Oct 2026 02:10:13 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 09 Oct 2026 02:10:14 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 09 Oct 2026 02:10:14 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c53d90e03cdc6f847140bccffddf8759988c116495fda5854aaab746be21e8`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 3.6 MB (3626338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8d0ab2bbce3842e00ed9fb8aa3cade3c4a068ba464df7620a2c61324b6fc1e`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248ac7cfc7da35d891db51a1b5c5760382755829f15923a2af3c6b3863cf1fd2`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d787457fa319d6a4ef67df1f4c7a18615b05d0726e708d4fb43df28843111f`  
		Last Modified: Fri, 09 Oct 2026 02:10:20 GMT  
		Size: 12.2 MB (12178100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a263ae42cbf987bea4290b1f3311ac2f19265c49e181ee679b3d11ddfd0c73fe`  
		Last Modified: Fri, 09 Oct 2026 02:10:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:2bc00fa89e39fa732a8304fc18f8e863555d1c09f6666f1a07adf2056163302f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e557bb646e53c1c73e24aaafd2fd390449091d393025b0a9afd848ce901f15`

```dockerfile
```

-	Layers:
	-	`sha256:c7fd0a1fc3ad5501dd1537034453d294c14aca118169a6abd86dab61a26756c1`  
		Last Modified: Fri, 09 Oct 2026 02:10:19 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dcba44d8bdc81206fd289696af0bd4a8422a7605aca40262e6d3bfea576c7f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130600775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a926d50c292fc062f041ceadd6476ac15c8caad57cf3874ad064da03af02f6ee`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
# Fri, 09 Oct 2026 02:09:33 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 02:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 09 Oct 2026 02:09:34 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 09 Oct 2026 02:09:34 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 09 Oct 2026 02:09:34 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf7465f16062df50cd8806dab5de9c8d166ba9bfb94ba94aac34f41f22ccbe4`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 3.6 MB (3611370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43529abed08d5e2373b7df6cb435c3e0ac882b539416f5c5527aa7dda4b6b94`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2b64448151c1dcdcc7b117868306bcd78721552196232aebd30ed8cd7929d4`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefb49027900d1a45e101440a157e278848a4b3914bd144e1772fc47b20203de`  
		Last Modified: Fri, 09 Oct 2026 02:09:39 GMT  
		Size: 11.3 MB (11305576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74ae732abde6009e81df50814edcbecd2153aaa1b7f25ba7c3947b09b772a8`  
		Last Modified: Fri, 09 Oct 2026 02:09:40 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:0f5841f1bcba1ec449447b0ea991c6e5035bc9d89bf5457f069f3444cb05d28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4383b5f1d2f73b9425b0866710606d6f43b9065bd2a0060bec4910da6febe049`

```dockerfile
```

-	Layers:
	-	`sha256:02951387c96b9ac66d39d0c726f29ecd30707dd2919a7bcbcaf4af085222b2d4`  
		Last Modified: Fri, 09 Oct 2026 02:09:38 GMT  
		Size: 30.7 KB (30655 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:0b6d18a4a222e71c88be6034926b4f6cde2fc33c2218643d03ccfddc65995470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:4c42359ca23de31b73b7a58396a9ca1f3b9c8e0ffbb309f34c3b14c12d889d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124560587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6d6ea5ca348694849364514e436202092c36d6a0b4040b0ca64937799046d4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:32 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:35 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:35 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d72d6d20fcba9b1604d305975bab0bb136dd22d6acf7416e2c0753890924405`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 8.2 MB (8200455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9246a4a10b8d5d396734a8cad833cea58337a52e9bddba5046e4d402c3ab81da`  
		Last Modified: Fri, 09 Oct 2026 00:23:41 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b4881c46446349d20a8e0ba1853423cc313cf63b79b781604679b3a0d182d0`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 20.3 MB (20286025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373581dd8ee6d05a33dee68eb97e6f4b9508a6b728d9dc8439251a88e917f0e`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f88200dfcfdf6cdd034b1607da9861017a2d3fdf55c764f58dfec4811895e6`  
		Last Modified: Fri, 09 Oct 2026 00:23:42 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a54ab73c8841cd7b4ff2d55e245e6a72617b2045fb6e6fc61d98f1694c4fbe8`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eab97391af1d66b54d8cd461c97234d4302eb299fd94f0dd108e23e4758d156`  
		Last Modified: Fri, 09 Oct 2026 00:23:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8bb1f5db10e35664ec3202c3deabcfaa687da87639ac6c805ded5cbf3fd18d`  
		Last Modified: Fri, 09 Oct 2026 00:23:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67660f0539b276ea1fd56245238b973e5a1cc9701684efe63fddd231eff3334`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 4.1 MB (4080934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc395878e903afb778206ec714b2d432305ab02e5be6db8e5f30fc5cc9f16b0d`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48478db38709abbe00306f3922df13b1453340512ff08ee4cf344af9785e7d04`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77634e971f65960053b68e7fe28cbdbef0da94dcf29a8c4c8fc69685cdb7f30d`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 52.9 MB (52937066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf374a4fd8097220ddc384b7b1815414b2f15ad174fffab97cbbb7608792ce76`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0788178164023cd35b9bad014b84e89e17f777c5a7e887af892fbdce73e15`  
		Last Modified: Fri, 09 Oct 2026 01:11:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:bf3a34bdd535548b17f67268c5b7deec2c324a9341964ccf0c0f58cd0c54d13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79113a7571d08b26657a5220f62cba10e0236829cfba0c12df2de6678d5882`

```dockerfile
```

-	Layers:
	-	`sha256:1a77cba84911ac7ebdd1ae91faa4e41d8009aa1baf08d05a927f069c3d73e772`  
		Last Modified: Fri, 09 Oct 2026 01:11:01 GMT  
		Size: 34.4 KB (34425 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:2decf0983544851895132f2f4d2045e4bf66f8faaa4ba9267f9f4407d870e793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116908678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e207bcc3e8baa011eb1bbe4b2fba5c4d9a2eae230fecbe5eccf34b6c7c9e2879`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:26:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:26:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:26:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:26:09 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:26:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:26:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:26:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:26:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:26:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:26:14 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74c8ee89eb00a0a9734dda4df51b0f17403de9d2a1b7685e18c0b6906c5fe4b`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 8.1 MB (8100270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad527a6c2b86b3fbf72e4f20454d4e38bd9189c2b346a5d0323f56fb54e742f6`  
		Last Modified: Fri, 09 Oct 2026 00:26:20 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87953753f8005f00b31dde9cc31a1cc1ac3f75f578b51b138bcbe14a1a5a60c`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 18.8 MB (18832304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4dac01c4164cf51e36817e44f491ddcb391b440d2def8aedc64e0735ee4c92`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 22.4 MB (22389444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b211f0569ed5e8133f14668b5323df1641525dfb070e39dc64daf2ae11731c4`  
		Last Modified: Fri, 09 Oct 2026 00:26:21 GMT  
		Size: 10.7 MB (10719280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a590ec94751daf3b2a9c0ceeb23d5a43bbec42c902f6cf20d9843e1d7fb0c7d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6c238f43887b2226c196c0d37df11d66bb2343f539f3ac976bec2892b5b1d`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92520e0f5ba8f229d8b9cd7fd4c2de8e6865222bf9cff45c73d1333c19432f2`  
		Last Modified: Fri, 09 Oct 2026 00:26:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c57f5a148cc724d0efee555cb17076f48170cff16b79bf539cf306b1defd0`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 3.7 MB (3717199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05233302fe8b1892e15073ea53e04e5865ec3b1312c866c997c0341468eaca`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 79.9 KB (79853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7090acc8cf6e953381e5d74ebf6affd7012cbf5da6e3bec06bc5eb4964d403d`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484473af66443518c4f9577a064a07c765fd84f16873815be6426f259e6aa2e`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 49.5 MB (49507054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d2c212be812f99e947449bb829e57ff697a8c5d69b1282cca2f10471d0592`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db375b5f9a03c5dfe873a7af36555fd682fddea5d1a660c42ee06e6cd241b4f`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:6242d179b157b693bef39d0cf43f18c4939b7471d91017f094371772141cbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e042a39df72e470b6cd18efe589515b56dd13af721e768d80cc5cd0e2afb67f`

```dockerfile
```

-	Layers:
	-	`sha256:04207abfb39fd8fb7e08f3eab7b3a59172b2b51a439f07b141b1ca219742d2f2`  
		Last Modified: Fri, 09 Oct 2026 01:10:36 GMT  
		Size: 34.6 KB (34604 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:061344f2a91d48d385af5e8732ba9eef2bf4bb12aaa2b1aff9dee63d65ba60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115439878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b4e36bb3321730555945b07dcd7d1223d7e0494ed8165542fae3b506b61c56`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:29:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:29:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:29:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:29:43 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:29:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:29:45 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:29:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:29:47 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:29:47 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:09:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:09:51 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865faf385b74a58cc1c059383e168b480f5f94ff33d208c959376fb636f2858`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 7.4 MB (7394996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259cf363f381540aab6c36301803f63352ba7f1a2defbd6f4af24386934a5bf`  
		Last Modified: Fri, 09 Oct 2026 00:29:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06505b0afb6779457183151ca4d181f5ba2aa1b20b2ff57408b51794046a0a51`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 18.8 MB (18821561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b72dcfc94cef5b8df80f1c86481e17bab5cfa88d4456d2b87a1587dae40ce5`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 22.4 MB (22372076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02752905c48276fc096d0adcf410cddce236ddd75d3cd1affa747080734bbfb`  
		Last Modified: Fri, 09 Oct 2026 00:29:54 GMT  
		Size: 10.7 MB (10708469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa24a23e2d59c55df18b694b13a6bdecc8377bdf4d94d0f18df6d51adaf59c98`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b61c20ac986dd68d5f9dd3591e3b5ca81d05ff5a645d87496a6b96a60188c8`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e71fae475da4b67402e0f8942d7435726d8216e08384877af1a9f8293f65b17`  
		Last Modified: Fri, 09 Oct 2026 00:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe29fcee281bc31e07bf2f21902a36b7aa3375b21765d068432f33573979652`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 3.4 MB (3439058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b7e7c5468a49dcc1c7eccfb72ea6a0219bd0ff1663334b3c6ce5bfe3eaa17f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 76.2 KB (76205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd093f93b60dac660729b47f3bd38acee3f554b09a82547ffff9367efa78e44f`  
		Last Modified: Fri, 09 Oct 2026 01:10:01 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be51e05cb667873b690af8acea5f509c8b7abc6de5fa9f423639b33489a4d06e`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 49.4 MB (49354156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb505891b7b920a7940a9b2feda1b32392af305a50a8a2dcc0e78e5127b09a5a`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a8d80c9daa0f1a99213c0517f5ca4113a423f891189a2672f2555f48a7e379`  
		Last Modified: Fri, 09 Oct 2026 01:10:02 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:bcea45e6cab84ca495e2e2ab80faf6c7037dbb1f374928b8a5dda244f81a74a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d9fcd5391244818a3c369d801902ac6056507c3fdc2050bdd6a9d8383a3be4`

```dockerfile
```

-	Layers:
	-	`sha256:a179d36972b4e10a0959018a60a79fb2fd26f56577d8bb65678bedf1c52f179c`  
		Last Modified: Fri, 09 Oct 2026 01:10:00 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0a02e01c20ef73e6060775ba3e33e415d289af3bfcf5b1b60e95674beb894875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115682487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78341604239c450067a5d7556cc8af6a42c0d0d6e64148dc8468ff20499399ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 09 Oct 2026 00:23:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 09 Oct 2026 00:23:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:23:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 09 Oct 2026 00:23:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:23:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 00:23:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 09 Oct 2026 00:23:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 09 Oct 2026 00:23:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Oct 2026 00:23:26 GMT
CMD ["sh"]
# Fri, 09 Oct 2026 01:10:25 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 09 Oct 2026 01:10:26 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 09 Oct 2026 01:10:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 09 Oct 2026 01:10:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 09 Oct 2026 01:10:29 GMT
VOLUME [/var/lib/docker]
# Fri, 09 Oct 2026 01:10:29 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 09 Oct 2026 01:10:29 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 09 Oct 2026 01:10:29 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd3e3d201c524b167ba67ca1d24ffe60636b92c5ec19971a44f5303f4f78ca`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 8.3 MB (8261625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0836030d392d17a861faf7016ac33765bf7cde5d6e4131a54b68fa94704ded6c`  
		Last Modified: Fri, 09 Oct 2026 00:23:31 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb58623fa5a94661887e0d17e08112befe2f11362d357a94505fcdc77a26bc2`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 18.7 MB (18673696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df1e10fe08490a1aa0bbf1fcd4a5cb2943aa3243d303e601bbd77ef4c7af10a`  
		Last Modified: Fri, 09 Oct 2026 00:23:32 GMT  
		Size: 21.6 MB (21567344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106833b4263d74d47c4be688fa82998438839ee20f745077c131da9d27874ff4`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 10.3 MB (10274536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0484b8c807a8d4a9ec1c9dba1843702b013884dd066ea95e541dd80bfb3865`  
		Last Modified: Fri, 09 Oct 2026 00:23:33 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047bf63ca1027589f25c0637b5bc5891721d4413f502698d730c989030f459f1`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d6d34ddbbe1b0a033b97c5f982ffbbfd9e790897a9bd601e09fec6961d68a7`  
		Last Modified: Fri, 09 Oct 2026 00:23:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9f1525c033cb8eb9b7cefc4b9dffc6d35860323b96f370b4ec3bd497967bd`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 4.6 MB (4628372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81be04fcd0d078ea2ab2d42e3505d5dc5cedb1a61d19419a0f3f219e0f15baa3`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 90.5 KB (90455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f256b0ec999f446a6cc7ba8dd33d1a2a066830a2dadde4f06df3e6d5d0fbd74e`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e23b1894f0f10ba30db40d54b914baa429a29e378de2d8fb254a79a02a49f3`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 48.0 MB (47990650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2227d3859809ac8c81e343172da070a4fecb6c9243cc592175cf7fb5aff13b`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da629e0a8d1beb57ef92fcb9b04e8035cf7185be4c0d19a1f4fbb01fba4edb22`  
		Last Modified: Fri, 09 Oct 2026 01:10:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:444fc49b5a419265ea242d8866b469c8fbc63cb034f10c99d47b257fae4be486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7370cc5a80bd6939e79e796e1de48394db3543bd4bde18b1a229a702ea6f128`

```dockerfile
```

-	Layers:
	-	`sha256:71fcbca26de052036b003ccb5dfc35051a7c9e4c08d37e3885a8e293eb872cb7`  
		Last Modified: Fri, 09 Oct 2026 01:10:37 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:64852b7bac2e22adcab59cb421599dc5f464010ad8c53a3046a1b59a7978ae1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:9f47a41f4eb790d7f9f4ed644ffffb5173bb592fade5faceb1a019beb72152b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284238159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9d96f894cd7594ac89a8d719c754bc9df286b90709cf7ad89ff54eec01f8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:56:45 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 22:56:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 22:56:57 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 22:57:05 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 22:57:07 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 22:57:14 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f38e833cda7fbc0e9fe500ffcda99c7ef6441114caafde722a8361c59a4e1f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a62ad06c6cbc8be8da10bd0379dda5defb49b168d5d589091619fe9c88e00aa`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc7e0ac3e0bc2553a1a21cce7afa4f7663196ae681e54920714218922c37f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4cf97d0719cfb34391f76d255cb7f4a2e1f4c69404ca664ef7b11675c6a38`  
		Last Modified: Tue, 13 Oct 2026 22:57:24 GMT  
		Size: 20.9 MB (20916250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5837af768cbdfd50cf34d650f392c76b6e3889880126a31a73b0deb8271eafdf`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ad5437b9bcebbe1a22bc271b768cd2bf472ed3f318176135afe7e0f7a019b`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21492d30694c9904afc97292faadbff555197638424e24033f51b3076da5109`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bc7c6e7b0b01901766b70bfacc4fd27765337d9566374a8224d5b289d08a09`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 24.7 MB (24744822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12ec6ce165782d69fe533d4ce5d31f4ce5fcf10580a15b2f70c52fe2189c149`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee972a2173d102863de8872fbe0dc3f7eba7bdddda1fa7e15dd04a0477422b`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09459a03c86f42a1ea73515715d54bd45ed3183bd313738fc43e6848cfb2cbaa`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882dca9afba62568a108c52ecd8ba988a6e3195c1ed9664f45f1b24957f0ed3`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 11.9 MB (11941369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:b20166450d0c3573bec9ace87b2b97101765a202e4f1aa73333892643be6713a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:9f47a41f4eb790d7f9f4ed644ffffb5173bb592fade5faceb1a019beb72152b9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284238159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9d96f894cd7594ac89a8d719c754bc9df286b90709cf7ad89ff54eec01f8c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 22:56:45 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 22:56:46 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 22:56:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 22:56:56 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 22:56:57 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 22:57:05 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 22:57:06 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 22:57:07 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 22:57:14 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f38e833cda7fbc0e9fe500ffcda99c7ef6441114caafde722a8361c59a4e1f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a62ad06c6cbc8be8da10bd0379dda5defb49b168d5d589091619fe9c88e00aa`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc7e0ac3e0bc2553a1a21cce7afa4f7663196ae681e54920714218922c37f8`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b4cf97d0719cfb34391f76d255cb7f4a2e1f4c69404ca664ef7b11675c6a38`  
		Last Modified: Tue, 13 Oct 2026 22:57:24 GMT  
		Size: 20.9 MB (20916250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5837af768cbdfd50cf34d650f392c76b6e3889880126a31a73b0deb8271eafdf`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42ad5437b9bcebbe1a22bc271b768cd2bf472ed3f318176135afe7e0f7a019b`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21492d30694c9904afc97292faadbff555197638424e24033f51b3076da5109`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bc7c6e7b0b01901766b70bfacc4fd27765337d9566374a8224d5b289d08a09`  
		Last Modified: Tue, 13 Oct 2026 22:57:22 GMT  
		Size: 24.7 MB (24744822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12ec6ce165782d69fe533d4ce5d31f4ce5fcf10580a15b2f70c52fe2189c149`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee972a2173d102863de8872fbe0dc3f7eba7bdddda1fa7e15dd04a0477422b`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09459a03c86f42a1ea73515715d54bd45ed3183bd313738fc43e6848cfb2cbaa`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882dca9afba62568a108c52ecd8ba988a6e3195c1ed9664f45f1b24957f0ed3`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 11.9 MB (11941369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:edf4d961a3dbf52574e5898e0907cafd43dbd24b2241ca7d671cc67557139314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:2e11c64b7af91887f1dcd4030620941fe3cc970910eace22f4d614d49287dacc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2449989358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72f12b88d455fdb51865c6297944cd476304d36937543d861231423de6bc173`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:02:17 GMT
ENV DOCKER_VERSION=29.9.0
# Tue, 13 Oct 2026 23:02:18 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Tue, 13 Oct 2026 23:02:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Tue, 13 Oct 2026 23:02:29 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Tue, 13 Oct 2026 23:02:30 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Tue, 13 Oct 2026 23:02:38 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Tue, 13 Oct 2026 23:02:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Tue, 13 Oct 2026 23:02:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5cfdfc8fa0457c3e438202d22e1bbfccf8a100721870a7fa13059134315e033`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 346.1 KB (346127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1b9341c673ff3b10108bf990e4d2491c703fdaac02664dfd7a63937756128`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392391eb2214ddc805b63aa76a5d5606dace54906bc18179f92fb4c7d252736`  
		Last Modified: Tue, 13 Oct 2026 23:02:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ac2f904d3e39a4e5f875d953168f32ca32670c498619dc7401d05f65878797`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 20.9 MB (20931035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681a9998562ffcf4eed73695a60e9bad22b3b3006480279feaf3a1b847a3632d`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4aa3227a912e5ece2c50f4463e9f219b0a9a1ac31a688c3707abe92068be4f`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42807aeb1ffa49a985dd52158ff46188c9936987af910e7b2ed0db685635e1e`  
		Last Modified: Tue, 13 Oct 2026 23:02:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb6f54acfc8974f8131c753b6cb2bf30d3fda7892a5efe87b14feb2cc0342f7`  
		Last Modified: Tue, 13 Oct 2026 23:02:56 GMT  
		Size: 24.8 MB (24753551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3768d004b75ba0ba90d643a4ee55bc7343d28ee086d496df7219479bae37a49a`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863aadba34a2d5039db2e50a369ff8756010580b0e9f854b22165f6765fdaec`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a972ce18be8c6eb7320cb8c93be1c1018999b8fb1f172279af4a5a00437cc817`  
		Last Modified: Tue, 13 Oct 2026 23:02:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b9abd1e59c6a32ed0275d11c604ef3b0300611f332714cbbc45fa19f8c6ded`  
		Last Modified: Tue, 13 Oct 2026 23:02:54 GMT  
		Size: 12.0 MB (11952790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
