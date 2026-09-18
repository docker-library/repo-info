## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:38e81dd3af50d085704d970815210dae3d094c5a8a70d7a8f336716889022ea2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:d8b68ae5e41ff2567b64621b1a9c9c95e4922d036cd63a967f2decfd6e027561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86860365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a986ecce4e24c15ac0e602c3c8aa61adf2240e9f8c9150d1a3bd7e443a66f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:46:53 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:46:54 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:46:55 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 17 Sep 2026 21:46:55 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 17 Sep 2026 21:46:58 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 17 Sep 2026 21:46:58 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 17 Sep 2026 21:46:58 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 17 Sep 2026 21:46:59 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 17 Sep 2026 21:46:59 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 17 Sep 2026 21:46:59 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 17 Sep 2026 21:46:59 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 17 Sep 2026 21:46:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:46:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:59 GMT
CMD ["influxd"]
# Thu, 17 Sep 2026 21:46:59 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 17 Sep 2026 21:46:59 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 17 Sep 2026 21:46:59 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 17 Sep 2026 21:46:59 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 17 Sep 2026 21:46:59 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36d7d8063d56662d3780458c319385d04b063128c3ca33264b0fa50f877b245`  
		Last Modified: Thu, 17 Sep 2026 21:47:08 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c943b87d0c3f5e9e58fa7c5dd7b8e4f94683bd19514154b3940707e9de19fd9`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 10.2 MB (10248502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edaeb561412376051ad3949344c3a8e77c65a5cf779d27303f9b1cffe9a6dd0d`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 3.8 MB (3822788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450363d9d7088c540cc99368c83722f862b5866e6f4c7e77d833c4471941b60d`  
		Last Modified: Thu, 17 Sep 2026 21:47:09 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a77f5a0aee24dde47b498047877ac588e04486c9f24979bc4f1e38f87684382`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 56.5 MB (56510595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82189ea5bc4e28e86f43bc8983bb86420b9a00cc41d5558679cb3ba430aee3f3`  
		Last Modified: Thu, 17 Sep 2026 21:47:11 GMT  
		Size: 12.4 MB (12421815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0825e8a8cbc1c3179795b006a96116f533a1bb78800457f663576b6ade8a189`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0dca08c6cc123f1b1a320569b512a16a9abd30c3059e56eb100822ca7bf9613`  
		Last Modified: Thu, 17 Sep 2026 21:47:11 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d9cbf740a1c8f61a55ea2ee1d008ca2304a51a8db16c931681e50486e819e8`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 6.5 KB (6491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:ffb60bf88344d16af9a3b2cc55740adbe3dcd7bcad82fb8299fd16c5fe823ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **965.4 KB (965371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472246e94c8ec7c8d2e899e5741b74fce0a9ae2d675e238dfe6e18987b0360a9`

```dockerfile
```

-	Layers:
	-	`sha256:55bdd206248d2d3766b53bb6aca66ef73891c4e8e26f2951d40e77b6fbd55cfc`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 934.8 KB (934762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2b9efc90d620446c5b9201c7bbc0191cd93ad706bc8565c167a2dfb94b6441b`  
		Last Modified: Thu, 17 Sep 2026 21:47:09 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:943ef03867ebd04076e080fd6f7126cdd7c8aa3b1e74604df2631105eb519ba0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82981677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41a1f330bc25501ce2cb672b53b0d2ae897dc44eed453ab3ec618c589e69285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:46:48 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:46:50 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 17 Sep 2026 21:46:50 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 17 Sep 2026 21:46:50 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 17 Sep 2026 21:46:53 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 17 Sep 2026 21:46:54 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 17 Sep 2026 21:46:54 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 17 Sep 2026 21:46:54 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 17 Sep 2026 21:46:54 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 17 Sep 2026 21:46:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:46:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:54 GMT
CMD ["influxd"]
# Thu, 17 Sep 2026 21:46:54 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 17 Sep 2026 21:46:54 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 17 Sep 2026 21:46:54 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 17 Sep 2026 21:46:54 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 17 Sep 2026 21:46:54 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4194258015f944146230a99192d891ca3bff0312e6f7832f0fd86596bd8e07`  
		Last Modified: Thu, 17 Sep 2026 21:47:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f376e222c0881f20d40375bf2b2f78853be507fc4f3c89b581402215104cdb4`  
		Last Modified: Thu, 17 Sep 2026 21:47:05 GMT  
		Size: 10.2 MB (10211283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9224e21ebba8b5fd03f49212132f1a2d2b2eb7e59dfed6ec110e44e91a694b5e`  
		Last Modified: Thu, 17 Sep 2026 21:47:05 GMT  
		Size: 3.5 MB (3459164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970a62bc2f1420b3042b4b26fdf6f4fd11186ce245c7cdcb92b3edf4ad10ea8a`  
		Last Modified: Thu, 17 Sep 2026 21:47:04 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abeecdf5b92315c0bc982e0ae7a9b0f502e39635beee2f39cde01ee943f5348`  
		Last Modified: Thu, 17 Sep 2026 21:47:07 GMT  
		Size: 53.6 MB (53636734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2352a58cc36a87cf0879dce7e4ca28b29be29c5801b6bfc8c4fd298b2ac2b8`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 11.5 MB (11480285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c6442f53f161182fa3be7c74721b473b6181b77989da240566e234734c939a`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fb48c49a6374a6bcf87f9cda757bc40508cad4f6508ea335a2d5a9d51d5a78`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d1d050711f74c95f94491276d6a3a070c429bff070e0e1d244ab287e19ae80`  
		Last Modified: Thu, 17 Sep 2026 21:47:07 GMT  
		Size: 6.5 KB (6488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:c3d869b7771a7e78f3cd0785f971d9aa848ad2df880e8cfd10b3c8d00994c3b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.2 KB (964164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ce34bb4631e6671734b8b3469a8ab175745e7c550b7f01460fa347ce42a7c8`

```dockerfile
```

-	Layers:
	-	`sha256:ca168fc956c6eb23672c868fb47715d05baae6343e800741c392fe051c149c2b`  
		Last Modified: Thu, 17 Sep 2026 21:47:04 GMT  
		Size: 933.4 KB (933361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:628010fc923c40620e3226a68c64e0683c31a01d50553106046023c7f41a2c37`  
		Last Modified: Thu, 17 Sep 2026 21:47:04 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json
