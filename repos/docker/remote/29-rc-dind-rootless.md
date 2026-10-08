## `docker:29-rc-dind-rootless`

```console
$ docker pull docker@sha256:45deebc71c3075158a9cae7b5442bbfa6595e00287dede20e8441c411495b7f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-rc-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:b9be03fbdfd7deeb5989dd192f892086f2d507a4b569a5b3a2d85c1e3b5c4780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139583833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37be1294140f487cef317f7d297bd39f9b05ecb576738fa5a5c5528afec51a4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:00 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:03 GMT
ENV DOCKER_VERSION=29.9.0-rc.2
# Wed, 07 Oct 2026 23:50:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:03 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:05 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:05 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:05 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:05 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:09:57 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:09:57 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:09:59 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:09:59 GMT
CMD []
# Thu, 08 Oct 2026 01:10:05 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 08 Oct 2026 01:10:05 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 08 Oct 2026 01:10:05 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 01:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.9.0-rc.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.9.0-rc.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 08 Oct 2026 01:10:06 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 08 Oct 2026 01:10:06 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 08 Oct 2026 01:10:06 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9da96f2c50a502ed3dd0b28fe0e0a0216e86b4b78a8a1a539b79f0bcb2e2246`  
		Last Modified: Wed, 07 Oct 2026 23:50:12 GMT  
		Size: 8.2 MB (8200460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a138dc5ec408ad5ebbaec231816c201b9ee852eb7d45decb6a82ebba89f68ce`  
		Last Modified: Wed, 07 Oct 2026 23:50:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575afb96540e276514c2378c5d066cafd50700d5e5c62c48dab43bb9c0cb17f6`  
		Last Modified: Wed, 07 Oct 2026 23:50:13 GMT  
		Size: 20.3 MB (20275859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158aa7a7fde582ee2311df6cfbc4dfb65ace538ad03675f3de590e6196b9abd2`  
		Last Modified: Wed, 07 Oct 2026 23:50:13 GMT  
		Size: 23.1 MB (23059636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c11f684a7b7a497b5f6c7dc57ad0071c48f92bc1a95435219af5da67995a1e`  
		Last Modified: Wed, 07 Oct 2026 23:50:13 GMT  
		Size: 11.3 MB (11302544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e1898f5cf65f894857a7d89a2263701bac54508045eacc89944ac7437890a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:13 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41469c2a893172ccc6ad2dfaf12f8a34b596a236cabf86bf2720241172382fa`  
		Last Modified: Wed, 07 Oct 2026 23:50:14 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044e404ce26e52d9cdd19ada98f4fbb68f852633f46ee5c1e88f57dc45f9dc3b`  
		Last Modified: Wed, 07 Oct 2026 23:50:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08ba250045b05b0c830ee2d1e784f58ff80f687765d0ffad926b9ca8b6cf386`  
		Last Modified: Thu, 08 Oct 2026 00:10:09 GMT  
		Size: 4.1 MB (4080939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81afa898f5687b204a86c6413d0b74de36411e33d5e64bf2b6319378b4142d9d`  
		Last Modified: Thu, 08 Oct 2026 00:10:09 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4743c421b9716684568bb29e95feba58fafb9a3cde4bd6f791830a709e13155`  
		Last Modified: Thu, 08 Oct 2026 00:10:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd467b1ba96037a83b2dfd981c75fd5a85bd644a15a148ce3fbb3fcfe57b0d1`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 52.9 MB (52924212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e02fdfb36c52ead0365d52fffe91dcc2cf89a032174ebf759851f1e0517e56`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c2f8f3d998d6cb7b78c01788927cdca4608fe45940f97b5220e68a4d8806c4`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a24ac8e5ca936d0651c2e57774ad24664565e19cc71321e4d77d48f2cb5a17f`  
		Last Modified: Thu, 08 Oct 2026 01:10:11 GMT  
		Size: 3.6 MB (3626365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2c744e295dc9fc4acdd16f0e2ca7bee4ed211f7a74bf1f985510afe002d53f`  
		Last Modified: Thu, 08 Oct 2026 01:10:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ba7a6ca66d45c57dc771f23ef5e68e2f8667abf8e45cde1071e823a26db7b`  
		Last Modified: Thu, 08 Oct 2026 01:10:11 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2e2b8a68aefb4d9992327278b3dc71e70e13c9b1b4d503cdc61e7e5f36325d`  
		Last Modified: Thu, 08 Oct 2026 01:10:12 GMT  
		Size: 12.2 MB (12173435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88db15ee8b0a02a34c2b745ec52c98f2d8c1fb4f7e82c572cdaf64b89d1d9d81`  
		Last Modified: Thu, 08 Oct 2026 01:10:12 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:9dbbb0609ca64c0e91ffc70a9ceefe5a8367ea0cd3df9d1b5f0b28e7ba8344f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8380f21d5ca402b510ff72c3dd90f93c8410f5630a53d2ac5cc95e3ea689abc0`

```dockerfile
```

-	Layers:
	-	`sha256:b2b760aa74b125e2b799c85198db51e85c4b5438a6e521f4aad34039b6ddfb4b`  
		Last Modified: Thu, 08 Oct 2026 01:10:11 GMT  
		Size: 30.2 KB (30245 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:30db0bc21b207740cc16e277d58ab6794c81a0cf9c1671a3e89fc0addce36877
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129891571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8dbe2fefdd824e608b314048a8ab32ac0ecb3224bd3ec8d9231a5af09c73a1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:04 GMT
ENV DOCKER_VERSION=29.9.0-rc.2
# Wed, 07 Oct 2026 23:51:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:04 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:05 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:06 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:06 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:06 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:06 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:05 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:06 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:06 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:09 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:09 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:09 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:09 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:09 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:09 GMT
CMD []
# Thu, 08 Oct 2026 01:09:43 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 08 Oct 2026 01:09:43 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 08 Oct 2026 01:09:43 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 01:09:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.9.0-rc.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.9.0-rc.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 08 Oct 2026 01:09:44 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 08 Oct 2026 01:09:44 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 08 Oct 2026 01:09:44 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53ea435e4765400aa240617a351af33c49caaa554eb8b25aa6806b9a58270dd`  
		Last Modified: Wed, 07 Oct 2026 23:51:13 GMT  
		Size: 18.7 MB (18666014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067f51de84ec857a02421499470889092b7f8fb3de2254cf667c45e4efc2bc08`  
		Last Modified: Wed, 07 Oct 2026 23:51:13 GMT  
		Size: 20.9 MB (20885951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575e5879f9b267d9ab2378b6c5d5524ac0603b2bebabc360464f78ffe4b250a`  
		Last Modified: Wed, 07 Oct 2026 23:51:13 GMT  
		Size: 10.3 MB (10274545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9490e63964d2120856dea92764d13aa7e1368c6cedfefc4c777aca9d88adb4e`  
		Last Modified: Wed, 07 Oct 2026 23:51:13 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1152f791be19633e70de051673ba31aec06455b389bf94c50f18a42b3b8620da`  
		Last Modified: Wed, 07 Oct 2026 23:51:14 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68d5674950935bd35d8e418f615498788265a292e4563ff18ab4283e2252446`  
		Last Modified: Wed, 07 Oct 2026 23:51:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb296ce7f8a4717c7d7bc2313881a81e9e9d602d0bedc0109b3146a9cbdddc9`  
		Last Modified: Thu, 08 Oct 2026 00:10:17 GMT  
		Size: 4.6 MB (4628414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c9e65963d1916819d3c56e9e3ad06d8f9a987d5d83fdc3e057661681cce049`  
		Last Modified: Thu, 08 Oct 2026 00:10:17 GMT  
		Size: 90.5 KB (90462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da288ecfbf3413ab54e457da74c5deca3f52ac99df90d85fdf66b10f702ddefb`  
		Last Modified: Thu, 08 Oct 2026 00:10:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0bf29b1f627f69ee7089480ee8b9b471f8413f98f7511ffe9d7b1928a955bb`  
		Last Modified: Thu, 08 Oct 2026 00:10:19 GMT  
		Size: 48.0 MB (47977254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb774e032503c1fac3e66ccc2898c16410ad95d2bc9b32578d912bbbc08bc5b`  
		Last Modified: Thu, 08 Oct 2026 00:10:18 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a169424303634e57097cbf1fda22679f8061ae7d257cc400d24d28bc984f0a54`  
		Last Modified: Thu, 08 Oct 2026 00:10:19 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726f4cb4e6390b3d37a1316cf718be3cf5efbafeeb510d3a6edf8a144e4157dd`  
		Last Modified: Thu, 08 Oct 2026 01:09:50 GMT  
		Size: 3.6 MB (3611358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7301eb71bc2639b52ab413b5621e1f34ecd49e95eb38cff9d8f003bea6fa5052`  
		Last Modified: Thu, 08 Oct 2026 01:09:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009a746a7c35ab7d24ca8fbeb54f368ac3da43920787c0bea5e23a79739787e5`  
		Last Modified: Thu, 08 Oct 2026 01:09:50 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f48e2374d2d9026618a999aa16d74cf8883d2536dcb4dfbe870eb70e238ad4`  
		Last Modified: Thu, 08 Oct 2026 01:09:50 GMT  
		Size: 11.3 MB (11298727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:256879420dd590da857adcee2ae710ea7299ac7e0095f0c40949a297acd7a20c`  
		Last Modified: Thu, 08 Oct 2026 01:09:51 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:5f7bae28ac709dc180871e5e4209d78bd5b59d7b1b19e6c6ecd44b813572b3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 KB (30397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdba54a5d0684bd9785596456720b5c95f0692e2abd8623dc06dfc13397396d0`

```dockerfile
```

-	Layers:
	-	`sha256:a57358160945b0e193363c751572e01f72402a7c3ea20bd94b28e8bfbdca608e`  
		Last Modified: Thu, 08 Oct 2026 01:09:49 GMT  
		Size: 30.4 KB (30397 bytes)  
		MIME: application/vnd.in-toto+json
