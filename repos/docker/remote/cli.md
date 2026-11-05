## `docker:cli`

```console
$ docker pull docker@sha256:2357639ad1ea7d0194134bf3292622fd4e562483966ed674e5d7c945b5f3b28d
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
$ docker pull docker@sha256:b0d99f37f463c88cae2082083f705210296186c06632d22f6952ed43506ae520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67816455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb125438f5f1e659af1ec2b511ecafeb7257a1b2be99e2a9cae623bf0e48c7fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:55:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:55:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:55:21 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:55:23 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:55:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:55:23 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e514f90e89f129032a5a2feda31d0137bdc9f15743610d9cab33eec123745590`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 8.2 MB (8202835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e65988a92f5279e35cb8d77dc13b7286c133c1cfee36fb883e7530a4a91b0fe`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0806112db8f7eec6a6f430c058bd18e538a37b794f87181004cbb90d400eea6d`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 20.3 MB (20275619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855d0b7102b2df62d4fb3b7a699991178588cc6e50011a20a74dbd179aa5fbd`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 23.8 MB (23826403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc1b2607ddc311575b84458a0619e1a2b217d179c4d4c550efeced41609c729`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 11.7 MB (11655770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4030326c55ce86f04d623321faca7081df4ecc4ab5e6cd8625be378d8370e3`  
		Last Modified: Thu, 05 Nov 2026 18:55:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5949fd59e99791fc2cd4c44952eb06abfcbc29350b56abcd713b8e00aea95`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129d67b3c7824fc85869d3031368590408ff527848e1fc8dbaf8d5437bde58e`  
		Last Modified: Thu, 05 Nov 2026 18:55:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:237ccd7bd3f225b175a553203815e795fa8d5e3f76ca8330e739270c487550d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d890feda7b4b1df65fe5c97bb29075ae582e4a55bed15be9c9bdd21e310406b`

```dockerfile
```

-	Layers:
	-	`sha256:377b337fb1707123876b5e594aef1fb3840202d0b82b90b929fb3f95da3c18b8`  
		Last Modified: Thu, 05 Nov 2026 18:55:30 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:f650eaf0819c879e51438641a15eecde22d9ce45a5cc2de619aceec70a61e78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12590a6973c705245f8a66a18a5fd2b01dda14a896884de249d7c5ba3748c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:43 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:44 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156217087f39e1fd37626ed774193fd94b38bbd7431a79f3faafff9352a8bc92`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 8.1 MB (8106932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d47d5af1ee7c7b575c5f93f7c5c24d2a4ad40da7cfb72152cb7e30d61648ac4`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5dc344192903830adad1e786f4625a2e3e787df18d9ae53585ff6922faf82f`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 18.8 MB (18823222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb6342bba353b1e511c5a04c85e2dbbbfc6faab4c94e0ec0e1bbb657dbade8`  
		Last Modified: Thu, 05 Nov 2026 18:16:51 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb59b9fda4a1cdf7165eaca4bd98a847efb3a6eaa3d6e1ad835470bd7f2ab4`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 11.0 MB (11047569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0512fc7afbae4789336c4eec3944e7d3a5fde07bb965fb389e300dd7fc5ebbc0`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ece3a5fd9dde660c2372b96039440985b1afd228e42e533e8e1ee3ccbd8681e`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ef76015c9653049363bb73ce9b44cd05fa49769dbc97c1333ff6ee81c8cd25`  
		Last Modified: Thu, 05 Nov 2026 18:16:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:409c4ba69bfbcb9bbb3279ba2e4b42e2b8820b7a99bb66ad971296f34aeefe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67bfd701e44c43a236460c5b34c9e0aade53b507dafbfa0da10f1facfe63d73e`

```dockerfile
```

-	Layers:
	-	`sha256:ead230e6f6f07e09fd6e4ac1629d2b281c10876f8aeb1856731b19154954e1fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:50 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3b9812b6a140a0d9ed21b4cf75f26b978b48878622c7f245da8ab1484eedb835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62891452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3849cc9c8bfb81436b9bedbf0119bc979372d535466f7d80642edb36058963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:16:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:16:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:16:51 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:16:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:16:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:16:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:16:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9214b30f7aa3ca26bdc51f02e58eff1a8cb670de440eed48c115a49c9a2f895`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 7.4 MB (7402489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a106fb579e78fec3e7e5b4d21049322ab018b35d10e9ef0e0848be65cc7493`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ca9e44c805a8fc1945cd29777f691f48b0c6bc1ed78307bf2e031622e6293`  
		Last Modified: Thu, 05 Nov 2026 18:17:02 GMT  
		Size: 18.8 MB (18809556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592d4e9f04f8544c7e619b38b3be3364ac352a80dc069ee1bc6b209bfdf6fe0`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 22.4 MB (22376955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9026de837d6197f70cdd43a4f18a8d99d5d6d3795aa431fdc47b4e28a9aec2`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 11.0 MB (11032562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123447bf33deee08ed3812e95b3b1cb404bac37c47c5c74dcfd6767c98d7cd25`  
		Last Modified: Thu, 05 Nov 2026 18:17:03 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7db0f94133e57e6e855a64d81052831f900aa24ef8a6b291f4348233202c4a`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ea10c52e56f312dc6afe5f1c11304e34d49d80f3cc1c4f0f12f3c7ef96be78`  
		Last Modified: Thu, 05 Nov 2026 18:17:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:d3b79edde83fac711311b3db30e5a6e5d282744fde9bed588edff2873cd56495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27cc3e92923677ad5fd63565866272db1c3fe04c03ccf2d37c643fc47df14dc`

```dockerfile
```

-	Layers:
	-	`sha256:b27c5086bc0b6429efbfc06096a1dc89495dac85c317e4acafcc7fc2ef8b12ff`  
		Last Modified: Thu, 05 Nov 2026 18:17:01 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:035209e4a5ad108b3292d00313678a84b9887d7cca45ac0d3c93d5a5ddc47425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6a9cac85f23ee76afdb5802a750ec9e07411a8de5740ee5bfc63aaba33df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:50:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 18:50:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_VERSION=29.9.3
# Thu, 05 Nov 2026 18:50:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 05 Nov 2026 18:50:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Thu, 05 Nov 2026 18:50:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 05 Nov 2026 18:50:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Thu, 05 Nov 2026 18:50:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 05 Nov 2026 18:50:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 05 Nov 2026 18:50:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:50:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260c99bc1932331f1c67d95710588dd8b72bce99497f60495af6f1f4438b2d7b`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 8.3 MB (8261352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60b0934a97efe80c5550ee33727ba70e8f3e3bfba6a3264d70040046d0b23c0`  
		Last Modified: Thu, 05 Nov 2026 18:50:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b016d409cc923576a717979055e9975d29817b1f90de067d7792b4f3215972`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 18.7 MB (18664051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a974b7fc96897cc5ae72817d881a880289098063884ca88cc885f1ac9476a`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2189b7c25c6901e19c89554f36dee98e894b905ac274fc5fe0bef5c2b40a2b`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 10.6 MB (10605357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c5288093a5c28cdf49199d6e2b883946372898041087f7f5d1f22ed9d9e10e`  
		Last Modified: Thu, 05 Nov 2026 18:50:59 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053d02c8ed345bcc6c4c2630dca70d538e46bb27d114c588f80d39cb90a35a4a`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a11073670856f88bc050e1d525edb748ca07517bfa355ad17427987ceda95b`  
		Last Modified: Thu, 05 Nov 2026 18:51:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:a5695f68f2fc632b71fed4a338e3d9f29402749eec8a36273dfedbe4696b4449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da8d7d4e209538ed596f4e59a470e38255e7e8276cae3aa4d6d99cf2fce6c5`

```dockerfile
```

-	Layers:
	-	`sha256:7ca45872074c599afecb4c80ba5850af774f01231779efd48cdde543aec4a68f`  
		Last Modified: Thu, 05 Nov 2026 18:50:58 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json
