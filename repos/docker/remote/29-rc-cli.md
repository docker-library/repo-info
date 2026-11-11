## `docker:29-rc-cli`

```console
$ docker pull docker@sha256:8d076a8d79ac8e6f5ee4134a3327c46e48ef6db5130c1106aafd53ef05d5846d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `docker:29-rc-cli` - linux; amd64

```console
$ docker pull docker@sha256:716724e891f54891de7ee92e9b409b2a79eeaa8d67ea7dd821d59ba1e52caff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58802903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be21539100e072d227221d981bbd55d0d44c1c5d9d72c6f605094235654bb96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:29 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f907f544917046dc83f34908bf4bad270cc139296df12f0c46697810bfa5f8`  
		Last Modified: Wed, 11 Nov 2026 00:39:36 GMT  
		Size: 8.2 MB (8204375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483008aafa899b1c01cc62dddef6e09021e956346b07890cb5eab39953019de5`  
		Last Modified: Wed, 11 Nov 2026 00:39:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994aaeac527553b6dadd41a65e24660d6440874a4187b340bc15166492294239`  
		Last Modified: Wed, 11 Nov 2026 00:39:36 GMT  
		Size: 11.3 MB (11260509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c079e08c34ea4f5e1bbefeb02a2987b37e2e01c31fd98a617638263ecb63e725`  
		Last Modified: Wed, 11 Nov 2026 00:39:36 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddd4a01595abdc01efe9091ed290a1713745fd1a096aabaf2aec152fc534b0c`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 11.7 MB (11655773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77aa4e2ffd7fca97bb13313ba775a1ef4b9313180e06b5ee12f14f7fd2525cc`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9c35a9d726e9215d475d80c005e8f8ce3d536edbc6faa45d855b55ad0caf84`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60ef0245ef44ccff83199809437857f7ae03598a3fd2d39acdae290199e214f`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:f816ca4db3727030dc57e3f2a96ca571cfb91d53d4f73175550a2a6c054431cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8287a5c8beb711638cb451f8b4fae1c5c7911b9ec1ccf92730bc656412d48144`

```dockerfile
```

-	Layers:
	-	`sha256:283c1f49b347c271f2a51f5751f405e4ca55ea652b3857669cdbfbb44c40058f`  
		Last Modified: Wed, 11 Nov 2026 00:39:35 GMT  
		Size: 40.2 KB (40178 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:fffacb9ff704f8c100d7802485843dae737efebbefec71a09307a25623454245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55802972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687b24f9af81bcd54efe57e5b457313991ee313827ed759ff2d7f0bc23f1ae0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:18 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:18 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:21 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:22 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bc0af122774ce77c2a3f2eed26fe08410418139dbb3bd611ab739a37280587`  
		Last Modified: Wed, 11 Nov 2026 00:39:29 GMT  
		Size: 8.1 MB (8108024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f56fd6b8e02b3da802fbbff64d538f07ca904d0cf72ce69eb4eb88a4f95b8de`  
		Last Modified: Wed, 11 Nov 2026 00:39:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412c09aea183069058557e3aefc0e57627dfc1b74d4b48af84e057c7f1a807f4`  
		Last Modified: Wed, 11 Nov 2026 00:39:29 GMT  
		Size: 10.7 MB (10687353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea1f3d807e6ba5e2f2b25aa69e345818198ed06bddb37bdc14bf2987ec726dc`  
		Last Modified: Wed, 11 Nov 2026 00:39:29 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99225714be73acc4a0a3f1fad2ed4fc598b0cf49ca7b9491e696f91564432d4a`  
		Last Modified: Wed, 11 Nov 2026 00:39:30 GMT  
		Size: 11.0 MB (11047591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd087c6c41fb9613375a89313887f9dc13f1cd0d8745e9876a0791a623c936a8`  
		Last Modified: Wed, 11 Nov 2026 00:39:30 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae999420d8e0872542eb21bcaf6b578e200dadd285e504a1ce61f862af1c0c91`  
		Last Modified: Wed, 11 Nov 2026 00:39:30 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9ec4abe87ec4be11540b28062f7e4ae77a66aa423f5583f5b81ca9328386af`  
		Last Modified: Wed, 11 Nov 2026 00:39:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ee2d52da2ab6de40ea4f76a046a05aad74fc87fc246d211fd9a5dcee5cb2929b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 KB (40338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958ee4367d6ced046da55cc6d3bb2233957b6e57fb4fd2844864155ecb490738`

```dockerfile
```

-	Layers:
	-	`sha256:214d2e4992229e38a8415edf59a484632e240508cf5fcd2253347c225ca96723`  
		Last Modified: Wed, 11 Nov 2026 00:39:28 GMT  
		Size: 40.3 KB (40338 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:e62fa45400fadcfbbc78b929588429b9eb0c451f3bfa6399d78dc0d1cba1665b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54756880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d43c0890e9b10bb585a66bdd9feba126fcfe5d9cb9b5c30a8f786db2e4958e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:22 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:23 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:32 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbd92c365cc5c9cc3a3845cd76b457907d9dcacdbb0fab2b738057e53079546`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 7.4 MB (7403593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325ff25a9752a736ffc682465e3a6af454832286760927f2003de9ff20e193e8`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0a2d0d19e3b3a207ece6185f104867878670a2a0edd58305b869a197d91fb8`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 10.7 MB (10673878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1834d3c15fec4eb02a89f794b140334a16376ea3173e547fdd50e40ae8cea60`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 22.4 MB (22376965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:debd750d9aba7991c54d3a153fda3728bbe63ce4f152ebb7ddeabee43dc4f161`  
		Last Modified: Wed, 11 Nov 2026 00:39:39 GMT  
		Size: 11.0 MB (11032556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4896e4205a25fbe17c84cff4039ff4fa6641bc93f0501580a966b87f9ec72309`  
		Last Modified: Wed, 11 Nov 2026 00:39:39 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1219c8d1568b23d85eec6f2d31117f941d24e2e39d841b6cadd20575e4a9a302`  
		Last Modified: Wed, 11 Nov 2026 00:39:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ada764693b71afe75663b0a4b6ee0aa735d38f0d5432cef68c1b83a12eace0`  
		Last Modified: Wed, 11 Nov 2026 00:39:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:84fdece8626bfd47d4d6ef346a481dc5dc69bf2c6484aac033fd94e4df4a9ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 KB (40338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f15109a449b030bf675bd78802e33c5e96060e6ef0b62a593f9fe3cb977bb8b`

```dockerfile
```

-	Layers:
	-	`sha256:36112a511082caf299171be0487f2206efa6ea38312b307be383ded2d472193a`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 40.3 KB (40338 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:f84b90c26a3f4664e62cb101cab58d2f58ecae20e7f19101d5ccaac25816a352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54808700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42be48ea28d1b3673e1a33bc84e53b86e5ef8164149839ce71f5b0bf27368f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:20 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:20 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c22a51d336adebfc1d07cbae79567e682b879e37ef532137c83cb3817f9154`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 8.3 MB (8264997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566520f55a9acc4a25f43ca9a248fd23e4d0878c3bbc8afb57e0eee5ab420377`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6752a4d515928b073be0b4e4b198da0f2b0056dff3677fac9abd7297d1bec5`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 10.2 MB (10171487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0ad39272e45f244c764a9659ebc611725748a06a29993828c3921896ce7b8f`  
		Last Modified: Wed, 11 Nov 2026 00:39:33 GMT  
		Size: 21.6 MB (21574099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75236307ace1d4a628788aff879df3f82fbde91860ffa5767c18979024579f30`  
		Last Modified: Wed, 11 Nov 2026 00:39:33 GMT  
		Size: 10.6 MB (10605368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949e5f0b038e61cd96cb85e22a8f7846af298f04c7274e32da2bae8888c9a8e8`  
		Last Modified: Wed, 11 Nov 2026 00:39:33 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6d0dd9f81379df7dd8ea8b3fba95ea3f401de6fbfe2e398817f87e8f6d6781`  
		Last Modified: Wed, 11 Nov 2026 00:39:34 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcc2842875c55c5cb6f477ae51b7717e89b4e6fe8f78f5b5f24bb967d788067`  
		Last Modified: Wed, 11 Nov 2026 00:39:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:f17aed6cfdead830268dfdca83a21a3a1de56ae23da9b434689e58ce0c88b8ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 KB (40374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b899d0b4189899c0d6e55bae782ef38e68b004bd7683160f80c0040a744217c7`

```dockerfile
```

-	Layers:
	-	`sha256:f448fc49e5e045039798f027a393080d0f6aeb2f6107dea3c8c1058dbd542061`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 40.4 KB (40374 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; ppc64le

```console
$ docker pull docker@sha256:feb18dfa0d14eff3c89b2dffef7fd85b8c46bb3adeb7115a1fc2a7c9df4975b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54881084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ee79e1dde52787013685e0dac5cf9144ec0ed2ad62f670e1cd686939ebcce3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:38:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:38:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:38:44 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:38:52 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:38:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:38:52 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:38:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:38:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:38:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:38:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:38:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3902d8d015b761ad5cdcb053806d19276cc34e55254c10fa732259cbfe3851c0`  
		Last Modified: Wed, 11 Nov 2026 00:39:12 GMT  
		Size: 8.6 MB (8636653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76cb11d981ba7eb6bac12b26c411e7db6934b600840d8ff33f6224c72502334`  
		Last Modified: Wed, 11 Nov 2026 00:39:11 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25a3a54110fe0cdc6626b98aab40a389c46403bc592b4e1315903cb62c367bf`  
		Last Modified: Wed, 11 Nov 2026 00:39:12 GMT  
		Size: 10.2 MB (10202727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faedb7bba21ec2ca0e94eaed04a2342532c2d6c572296b5074477b93e782e052`  
		Last Modified: Wed, 11 Nov 2026 00:39:13 GMT  
		Size: 21.6 MB (21586350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e52bda3e45c293ac9937675f5c622d681a1b4971432adb817ab9a45f645d23`  
		Last Modified: Wed, 11 Nov 2026 00:39:13 GMT  
		Size: 10.6 MB (10631274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60997ec78b1b3f523deb517be2335d87c248f9a5178875eff836fcde4d8370b6`  
		Last Modified: Wed, 11 Nov 2026 00:39:13 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372963b1f0071dc60a9dcf462b81ac129ddf19dff2811bf6906b4342b8093a30`  
		Last Modified: Wed, 11 Nov 2026 00:39:14 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90cfc9bc8d0e1f932b10dbc14570ffbb3d9f1351d8b9eca00a3c21992abed9c`  
		Last Modified: Wed, 11 Nov 2026 00:39:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:db6200dca08c18fad346c3e9ba1756233b033403879263bb61c4826dddd4b814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c923e52d4f719293d38631e81fb5591f5d6881299c49b5785967ecd3034e7bf`

```dockerfile
```

-	Layers:
	-	`sha256:12c1b505b79b0b7a7a51728a83a68b9eadd167380555d535c61568b3a262b5a3`  
		Last Modified: Wed, 11 Nov 2026 00:39:11 GMT  
		Size: 40.2 KB (40236 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; s390x

```console
$ docker pull docker@sha256:07d7367afef686b3b667e86b27efaabb587144ab171847dd563ef0a6f591b0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57369077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41c539469940cd54417183e61c58ce413c4e6c769c752010613a28aad08fa5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:38:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:38:20 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:38:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:38:24 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:38:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:38:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:38:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:38:26 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:38:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:38:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:38:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bf39b604d5c4670f5b21980fb391573f9bc2bacf88d176227cc0c2426e307d`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 8.5 MB (8500474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a25d1d3e064b78064f1a34b37d677373a6948771acbc7c543291e304710f2c2`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf66943b09874dede261f2104d9e0d8d019ec923db3bc17be4b9931438bbd0c`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 10.9 MB (10878318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a1b7d5d832bfb7f862453e884cd043762199f8db4d8e7baa02e726b9a270bc`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 23.0 MB (22974235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8fb43de4f118b94861431e3c861733e63c5d3837171d03fc417e3898953e06`  
		Last Modified: Wed, 11 Nov 2026 00:38:39 GMT  
		Size: 11.3 MB (11293225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931bf6dcf7e47a8c912b74fade3aa5d6d67dd125b8e718a8640cfa446a1aca18`  
		Last Modified: Wed, 11 Nov 2026 00:38:39 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab87fdba80e5bfe12e3472abb470fd43c663c52204a1aba7285536d56736922f`  
		Last Modified: Wed, 11 Nov 2026 00:38:39 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248dc72cef427706b5834611c9fb19488bd3f4bffc609c08d2e311b9383853f5`  
		Last Modified: Wed, 11 Nov 2026 00:38:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:671eacae0bdd75d7ed0dc41802101325c40e1ed572a37b664c9d69f845599719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a514a0746e0a68362e5fa94894af93006b06b9c7466059bf122729e6fc8fe682`

```dockerfile
```

-	Layers:
	-	`sha256:5d4a452f5f213506a93cddbe78be77a5c109cecb92d1918d25c1db2ee3a53c01`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 40.2 KB (40179 bytes)  
		MIME: application/vnd.in-toto+json
