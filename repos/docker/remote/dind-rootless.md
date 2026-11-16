## `docker:dind-rootless`

```console
$ docker pull docker@sha256:5a703ad0d72cd5e4fb4beca8024d6eddef6d22a46ed1d9812bf3d24ff43ccbce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:e9a64c6aaf04fe706935a5975ad25845621d0981a6ca91e21120448551b2033c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131331820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f091837d11595d74c74bd7410cbb20baa41b82124784e4878b626169705b2072`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 20:00:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 20:00:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 20:00:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 20:00:26 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 20:00:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 20:00:26 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 20:00:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 20:00:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 20:00:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 20:00:28 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 20:00:28 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:18:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:18:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:18:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:18:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:18:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:18:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:18:51 GMT
CMD []
# Mon, 16 Nov 2026 21:09:41 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 16 Nov 2026 21:09:41 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 16 Nov 2026 21:09:41 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 21:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.10.0.tgz'; 			sha256='a4ad65be3921ac3e45f3fe69893f5edbd078cb3b4a6499fe13288053553dce25'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.10.0.tgz'; 			sha256='6d08caae6a61e58f86c21dc94bcbf87f2b7a82bb634ef051243004a7f92f9e07'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 16 Nov 2026 21:09:42 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 16 Nov 2026 21:09:42 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 16 Nov 2026 21:09:42 GMT
USER rootless
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79a20f65ccf189ed5468fc14879b7e4a212427dd4efeb2efca0c320a8c2cf3a`  
		Last Modified: Mon, 16 Nov 2026 20:00:35 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a1fa15fb8091ef57c003f3a74d5b1a2881eaf8dc9015c4058d9ce8494dba36`  
		Last Modified: Mon, 16 Nov 2026 20:00:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554970c1d0af3cd775c70b87c84fee84ada826fa8a9977be83db364107190a8f`  
		Last Modified: Mon, 16 Nov 2026 20:00:35 GMT  
		Size: 11.3 MB (11261460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5da4a42f190109f0608bc941203b2be5310dfe2faaec4384540bfc9f65a9b8b`  
		Last Modified: Mon, 16 Nov 2026 20:00:36 GMT  
		Size: 24.0 MB (24049065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5c7ebbff8d68bf90435a2b0b9a8f973c70dbb8c148c0893737676a86a9191a`  
		Last Modified: Mon, 16 Nov 2026 20:00:37 GMT  
		Size: 11.8 MB (11839923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f0ba247ae413d7b55d59b35cf0540d69122ad65d406a6529ec2382529a9d70`  
		Last Modified: Mon, 16 Nov 2026 20:00:36 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5681b4d7626a8b0d7b9066981d202e5f20d050e00c4c24fd519758c39a0f25f`  
		Last Modified: Mon, 16 Nov 2026 20:00:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01e603afa82e4efad14023ceb43cadf17cb6a08959f5f2c18bdd255a5aa496c`  
		Last Modified: Mon, 16 Nov 2026 20:00:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eec628ff29c7c4a4f3a4be69e0e2c49230005272eb5d05410ca92bcf49a1bdd`  
		Last Modified: Mon, 16 Nov 2026 20:19:00 GMT  
		Size: 1.5 MB (1497345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671b73a663a8e6652be37d8a762a850347e14f577feb9234e14662190f36fb3e`  
		Last Modified: Mon, 16 Nov 2026 20:19:00 GMT  
		Size: 81.0 KB (81048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7a105296c3a098f4b64f494f868cc3c8f117baba7d0fb583deaffb6127bcd8`  
		Last Modified: Mon, 16 Nov 2026 20:19:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adf556881dfbcaa6e74607009219632ae05db1bba8af8d0de82d3fb3f496dcc`  
		Last Modified: Mon, 16 Nov 2026 20:19:02 GMT  
		Size: 54.2 MB (54209245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6183236cc14aaa8055587f78402a13954c41b62e0d7e57fec6bbfa1408e0b208`  
		Last Modified: Mon, 16 Nov 2026 20:19:01 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1715fa38ecf8eb06e4eab9ecfa5085a5810dda5597484ad3f165b0c03b1e87`  
		Last Modified: Mon, 16 Nov 2026 20:19:01 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143480f1ca3296e0497f15432432a7277241840bcd4841b67f8d624afa2d91ff`  
		Last Modified: Mon, 16 Nov 2026 21:09:47 GMT  
		Size: 3.6 MB (3626269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc5bdb025278aed64bd3289db546ecd0c57aa91c561b4d08d156bdbc707b9ba`  
		Last Modified: Mon, 16 Nov 2026 21:09:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba74b086d9fbea2a0b9b7c406592eac3fd29d3a0eedc91635502223da325f598`  
		Last Modified: Mon, 16 Nov 2026 21:09:47 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf2f7a41447958a015d6d8fbc6366aef4bf1b8da92c67411b270edee1d03f9d`  
		Last Modified: Mon, 16 Nov 2026 21:09:47 GMT  
		Size: 12.7 MB (12699920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928da71d4812fb171506d804b56315e3734b178f0686c35df937f74eacb49b2e`  
		Last Modified: Mon, 16 Nov 2026 21:09:48 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:92cca14632d7aaac4ee4a23bb7ab1cf02f66df322d23598419f3c4c8e6f07b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.0 KB (30962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a5e734cc58604617712001d6a207da6e2e11d3ab7698c59ee7751ecae92f84`

```dockerfile
```

-	Layers:
	-	`sha256:2ba3ec6fb2f318179cacfdc0ac992e3bc79d91d48298bd77d1d90a901ff2bd90`  
		Last Modified: Mon, 16 Nov 2026 21:09:46 GMT  
		Size: 31.0 KB (30962 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f6fb1d59ddd42660dc0e3bb7b6729765de5d421dc8d2ffedf2c0d960ae4d24d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121552092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd87c813ed961f850827e658d5f61d15e71056e1472dbf9e1013db4ce9b6f912`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:57:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 19:57:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 19:57:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 19:57:53 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 19:57:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 19:57:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 19:57:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 19:57:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 19:57:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 19:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 19:57:55 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:08:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:08:22 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:08:22 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:08:25 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:08:25 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:08:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:08:25 GMT
CMD []
# Mon, 16 Nov 2026 20:23:59 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 16 Nov 2026 20:23:59 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 16 Nov 2026 20:23:59 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:23:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.10.0.tgz'; 			sha256='a4ad65be3921ac3e45f3fe69893f5edbd078cb3b4a6499fe13288053553dce25'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.10.0.tgz'; 			sha256='6d08caae6a61e58f86c21dc94bcbf87f2b7a82bb634ef051243004a7f92f9e07'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 16 Nov 2026 20:24:00 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 16 Nov 2026 20:24:00 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 16 Nov 2026 20:24:00 GMT
USER rootless
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aef02c4ce166d9b73b81ae18862b13ae74ef623967197e0958416a04e3fdf7`  
		Last Modified: Mon, 16 Nov 2026 19:58:01 GMT  
		Size: 8.3 MB (8265015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45799ba3e5ac0059b67df17cf8933cca4c5dc15edde1556a13b814e5062793c4`  
		Last Modified: Mon, 16 Nov 2026 19:58:00 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc318e2f94ec3ebc0eb47866dcd36f148722a0581f8b206afb38f906449872`  
		Last Modified: Mon, 16 Nov 2026 19:58:01 GMT  
		Size: 10.2 MB (10171258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87fdbe3d514b1448d65b90d9a9392e7cee506eb509a16aeab3e0b87691ee1ec`  
		Last Modified: Mon, 16 Nov 2026 19:58:01 GMT  
		Size: 21.7 MB (21734897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46d19ad6eee81bb418e163534c20b362447d5cb0537de5ec78f8aa47ecf0480`  
		Last Modified: Mon, 16 Nov 2026 19:58:02 GMT  
		Size: 10.7 MB (10735427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494b5745f715cd164d3bb9e47e97896f87b75be7005e4060b09f01913b4ff375`  
		Last Modified: Mon, 16 Nov 2026 19:58:02 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dac699a5ed9396f7ffaed1d309c637db4105f2d35d57b12cc15c3fed2655e82`  
		Last Modified: Mon, 16 Nov 2026 19:58:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca7a5d061cdb7618dbd293851cb5cc22531bcf7f45fd9a47a780f163649f432`  
		Last Modified: Mon, 16 Nov 2026 19:58:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1a6c6e7a318868cf4f2911c939f9a4affe593ff46a62fc6cfc208889cd1475`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.7 MB (1744510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2388ed332f99035947fdcf4acbcebb53ff7e43f7ada212efc484369064da50`  
		Last Modified: Mon, 16 Nov 2026 20:08:33 GMT  
		Size: 90.4 KB (90354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f686eda0117006e978bdebec5c36cf909f6f8d8a31813138f6fb8de3963d67d9`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ac9b0bf5b567ead9689d57956c365620f2cafae8cf5d172d72e5f59e69a475`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 49.2 MB (49245668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1832b4cf8183ce5dce06b6165844d9a57ab48dbb563b7300b5474d8273af48`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03eea87c3ec1681771469dea5ec6bf65b19da5ac11b198b025a494b16df92f4f`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53d6212157a589d139393783b3144d3491d39a0eb462ad6fa490701e822e529`  
		Last Modified: Mon, 16 Nov 2026 20:24:05 GMT  
		Size: 3.6 MB (3611260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efd21c698d9f1fd04bd1b58dd6bcd3e19da4b5f3c6b4e1e5b6171b6c35f7c35`  
		Last Modified: Mon, 16 Nov 2026 20:24:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3252f48de6f7ec0183b9d6e0f453de5e20946575e7fe98dccfa79808bf1d28`  
		Last Modified: Mon, 16 Nov 2026 20:24:05 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c4b208655a6c426aa99d25d2aa76631e49918149d2ed838c674fefcd261f75`  
		Last Modified: Mon, 16 Nov 2026 20:24:05 GMT  
		Size: 11.8 MB (11753617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e7ffaa9f7c56aa89664ba7e73ae3363e2436f13c59f38157b1158ae1562876`  
		Last Modified: Mon, 16 Nov 2026 20:24:06 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:61bb94147e0bb375fc8193ddb55b81de273bd55db04719db6457d2fcbab6d868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 KB (31126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518c7184b7635d0d5aa8019aaf498ff0ba2b0d20dc64059b31272920e30f9d4b`

```dockerfile
```

-	Layers:
	-	`sha256:d8a9766a61b3656c11237c3f92f0908edc6dd1108bfa979b54b2125335d7990a`  
		Last Modified: Mon, 16 Nov 2026 20:24:04 GMT  
		Size: 31.1 KB (31126 bytes)  
		MIME: application/vnd.in-toto+json
