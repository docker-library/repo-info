## `docker:cli`

```console
$ docker pull docker@sha256:206ae9cc405101ab0cf97d4b515d21bf6aae961f98f7f9d8de6c111718fef335
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
$ docker pull docker@sha256:f1069150feb2fb4e09ed208e066c72518bda2fb6782266e294b359fa09408617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e343a1f8bc5fd359689d51bbf89480ae80ecdd370d011c723a3dd5df99a1e9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:37 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822881948558613cb02bc93943d91f473b1843ce0193e7d82d1a3c5abfc3203b`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 8.2 MB (8183871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fd10137d271590fb7cf1da052e4b46956ab5392ee736274e0e6e546a49f90`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6e32d662c488eabf84370415e01eb708247d1656847fc9b00e827653eaed71`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 19.5 MB (19538677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63223109fc2e6a5753687582f33280732a5515ce9e84cbc0c2f79a240a81533c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 22.9 MB (22879776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f464f4588a516bacced204bb72910773f79efdea404c30a5e03fe64c13a11a3c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 11.3 MB (11322385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1a9a8487c037a4d5a1dc6bd9bc0eec95bcb068e38dad67dfdf3233ca7321da`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abf45e40384ead09b00b136bc07fbb06147d12108c25138954c8fb8511caee9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661305fee4a153b308e0293f3ec6ac524a65ce7b9a6a06f6c132c5f4c0a6a8fb`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:f5915b9593bea9be7583a08eaa9c7af409aba68ebcc1408260454283bafbbc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c35753fd2a16f074d0387541243d71592298e44afbfab6bffc114dc008dafb`

```dockerfile
```

-	Layers:
	-	`sha256:3c783a962f9748ca6839e193ab465e19013cd6c4517b0a97622bedae4565a380`  
		Last Modified: Fri, 31 Jul 2026 16:23:43 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:2a132c1feac0743bcd0ea63b4494a63db75986e32a72a0a674cd83feb799fe31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (62040145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425a379de68fd272f715201dda75d1a9e146434215021c97485d4bbd75830bfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb398cafc2ed6031413d58d3c826c5ceacca175d6fd81164d7ca00a4c8947c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 8.1 MB (8084794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d222713fb8d741a83fc8d78eaa3ae38c5c802f0461d06f2ba548edce737c26c`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 18.2 MB (18167239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7daad1072e25caa10746165e8b95fdb5e557e88af9e41cebf499734db6ec75e`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21502053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbc45599d2bde0f4b6fa512f321d3a034e24678fbadebfe14340a346df5d6b4`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316a7f97033fe5a9203800a7a52d4c9d1ebccbebb112e9a000da162d14889e86`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702b134215cf642b0731b67afa602a61b3f1e630196580b04e1cb17f63c23c1`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa1dd83202105ae1a43531427b5bc9a7483876a92ec2e758d0461bce57e8e31`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:4db770e4d2ec0b64818dfccf1e6a6347d9db2534c234ece017ffdf076eb8a48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db817b5d8f0d41f2211c74b057908a1eee4d580d8579f65b35ce3a0ee01747`

```dockerfile
```

-	Layers:
	-	`sha256:849c46f147802085723dfa61160b6f64dc1b0935c0f08743935dada09843b6bc`  
		Last Modified: Fri, 31 Jul 2026 16:23:44 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:b4a500ea980f7ab09bef93e39baa8f4acfb6041ba07ea281bdba7e78292d0a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60999466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f73093d1c9a96a7726a0cffedd3a44f7021b6a0954d574c3a768ac46ad32440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:38 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:39 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91fb8ac8d1fffb3d2b3d88369ebf688311a4d0e80027c63c87fe4d5ccb237f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 7.4 MB (7380522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbff16a1443837bc37b1a7d8027f3b8a36bef8aa216e7ea1d200db447aae2ba9`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 18.1 MB (18148024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c6324afa9384a1b43df2a689a98abdab97a2b911f3a22e3b42b15b303cef73`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 21.5 MB (21485940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f6a33416bd68f93db71a055e1ca3e1801a1d4512cfc220af703331fab960f5`  
		Last Modified: Fri, 31 Jul 2026 16:23:46 GMT  
		Size: 10.7 MB (10722209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43354cce4869b259b278b20d01dc93282d97617b5c0e1de5e6cd21af69ed5265`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d2a719a61cbc83946f75056bd986a59697613c3abe14d440a2175e8d76cd58`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb75934960f95836d8ce538027cc49d27e9418a6210b9d7a5477cc786344f13`  
		Last Modified: Fri, 31 Jul 2026 16:23:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:67c897cf0ac713eb7f70df139741fbbf3a0944dcc21580a38470685f4ddfb04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a61aeccf2a1b36343e2e5de0c0054e1193f7c94a646e655a7db167266ca6d31`

```dockerfile
```

-	Layers:
	-	`sha256:bef528d98cac2a6c0f1a47cdd9d2238b4ec347513e38dacbc85a9b0f11bcc96b`  
		Last Modified: Fri, 31 Jul 2026 16:23:45 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c1f88946de93f65e482b7559d2f3db8d2acf726478bc3cde231138f481a3c393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61410124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0140b790251737858d352380a6daa51c7e251286ea72663595b559c2fd2ffc9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 31 Jul 2026 16:23:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 31 Jul 2026 16:23:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_VERSION=29.7.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.0
# Fri, 31 Jul 2026 16:23:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-amd64'; 			sha256='07823fdfcd82a41be90155a8b16876c1a780a6462de805a9f3f63b3119ccfb99'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v6'; 			sha256='6d87680eab65cb2b8c3bba602406a40f718b77eb8e3af10994db794e3deada37'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm-v7'; 			sha256='50527239ba76f72e9ffd8227a2e265c6751f71e4908546f0f68c329e87b2c71c'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-arm64'; 			sha256='70382de03915c07c488ae4ddc4f7e169ee978f953e754ecfce110ba017e0132b'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-ppc64le'; 			sha256='ebd3c6c77e649c759986380e1281d38b50bd4afe88fec2076ea48c56b1e08227'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-riscv64'; 			sha256='8b2b242d512e77f711028af53f8501241fceb22a80a8f5e7368a27375cf805a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.0/buildx-v0.36.0.linux-s390x'; 			sha256='7c00dc2644ff428779d075aa080d046397511797d1c8475dce9f3c3471965a04'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 31 Jul 2026 16:23:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 31 Jul 2026 16:23:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 31 Jul 2026 16:23:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 31 Jul 2026 16:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 16:23:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c561ac8c04ee6ea00d9ef53be341ca3854926614ef170b3ac4d7fffd65e54c`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 8.2 MB (8235033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552c68143dbf199798ac1fd51ef98794be8e587d79d557474fb25f1964aaf782`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feda982ea06835be4eafac571ab5e7ce0dd5ecb2d8b9a3d18e714996f9078ad`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 18.0 MB (17977740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b06769bf22afad83764ab4ac325d0010199baa4ba04688c5f69fd7f0a2a69fc`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 20.7 MB (20721794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d6688256c33154a87b54ab372fc9a406fbf268746f9515bad4c7a6ed43b8d`  
		Last Modified: Fri, 31 Jul 2026 16:23:41 GMT  
		Size: 10.3 MB (10290365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9640a74f00bed6595e11b2978490142d1bb103a4009c08d3d6ac32a548ab4dc3`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503ce1761c3913418e33e5a4daa51a48637d20ba775576301e6dae0016b822f1`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d877205ad8fcb3a94e2e941dc1cad795c9f85a8c2f55a2b14c05774674903ad2`  
		Last Modified: Fri, 31 Jul 2026 16:23:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:205690000e4fe4f931ec88ade6bba3427e5fe2ce3e9e6e0acb67ea4e277fc2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd2719aacb1a1368a0b1fac9c0750580d58c8b190854e9fab8875fc0b13b105`

```dockerfile
```

-	Layers:
	-	`sha256:19a1fe27e6a95ecfbc17a7a2ce6c4dfd1ca08154d84cc459d810dd722ad1eec6`  
		Last Modified: Fri, 31 Jul 2026 16:23:40 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json
