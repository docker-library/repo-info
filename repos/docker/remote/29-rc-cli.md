## `docker:29-rc-cli`

```console
$ docker pull docker@sha256:a83f0c8c0a57cfa71b07770a815752fbfe1faa50957fc5fe6335f7167e531861
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

### `docker:29-rc-cli` - linux; amd64

```console
$ docker pull docker@sha256:022bb3a88165dc94ebbffe999b94a9a5c70f88e7906b0546146fcfc3cf546505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66690389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7706d0139c35605fbc414e8d9893534540c5940cc81e13f2a20eb1b16e88e384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a3d7f269d5e2e8b5d4b491eba3109ab1715e0c45ad5036766efac362e881005b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e656ebc439ef451ad9db7e364239f360ee2c1e3a5bcc6fc646c960f76f2a24`

```dockerfile
```

-	Layers:
	-	`sha256:d4a035eb189ba014bb3f9a4a386d52c6f651a2e83be41c20d43f2713a1a02bcf`  
		Last Modified: Wed, 07 Oct 2026 23:50:12 GMT  
		Size: 37.8 KB (37847 bytes)  
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
$ docker pull docker@sha256:8e022891d63b0655f77e94d2e6797e28d856528c731651289072e9c7c47717e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62278013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e00ce029c305752bb9e191c39e393d2db2903b3084449321bd8798f628c21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0cb0beab41e76061d4809b79c60029d4c0eaf431ecf79caa67edb3a1b90407df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f316c405b4e1611aa7f6e53b4edfc0866e3225d9f9b5d125ae30402e213744`

```dockerfile
```

-	Layers:
	-	`sha256:2828739fbdd5aa8a2b63181b01917e906ce0c50e5ab3b24c705b51ae33195cc2`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 38.0 KB (38040 bytes)  
		MIME: application/vnd.in-toto+json
