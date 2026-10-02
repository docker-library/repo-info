## `influxdb:2-alpine`

```console
$ docker pull influxdb@sha256:5e250f6ab3e229d6ac27131fadf3c772f3a510875e8c6f22da017f39684bdcd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ceb9d2ab91893c669d052674002bc15e5649a406e5cdb220b88f4b6cf35ed7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86860645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390bf61ddac7c0d92aa71de7d0bfe2ad188cb9c4554edb2846b48c546ca28e56`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 23:49:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 01 Oct 2026 23:49:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 01 Oct 2026 23:49:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 01 Oct 2026 23:49:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 01 Oct 2026 23:49:35 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 01 Oct 2026 23:49:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 01 Oct 2026 23:49:35 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 01 Oct 2026 23:49:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 01 Oct 2026 23:49:36 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 01 Oct 2026 23:49:36 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 01 Oct 2026 23:49:36 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 01 Oct 2026 23:49:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 01 Oct 2026 23:49:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Oct 2026 23:49:36 GMT
CMD ["influxd"]
# Thu, 01 Oct 2026 23:49:36 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 01 Oct 2026 23:49:36 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 01 Oct 2026 23:49:36 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 01 Oct 2026 23:49:36 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 01 Oct 2026 23:49:36 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372f6863f43aedef0d7a4823ffeb75f71b8ccaca0b429aad63a5f780c4bd6512`  
		Last Modified: Thu, 01 Oct 2026 23:49:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea4f4662539f3224371bb993b5034ba3d1676c05e99a9878e2488b06b0dec65`  
		Last Modified: Thu, 01 Oct 2026 23:49:47 GMT  
		Size: 10.2 MB (10248575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2177c8f53569006efb80eb5ffa8aebf47ade3184d002fbe2106e3303db6fb89`  
		Last Modified: Thu, 01 Oct 2026 23:49:47 GMT  
		Size: 3.8 MB (3822792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9cb1de37e49bca388c8c763bf673911750d3e55ff2a34245c34a1ec667c5cf`  
		Last Modified: Thu, 01 Oct 2026 23:49:47 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0bd10ed943ad521e898e1264769c2f3dea29b4eb936d9bee85dd04a38b0067`  
		Last Modified: Thu, 01 Oct 2026 23:49:50 GMT  
		Size: 56.5 MB (56510605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9daa0a46fc44c419b377e8f15150d9f7de0d08e0c94ec7115b8933ce49afd20c`  
		Last Modified: Thu, 01 Oct 2026 23:49:49 GMT  
		Size: 12.4 MB (12421819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d948df367c69081f81601f22d606bc229515d22af25cc5293834deb45dd670`  
		Last Modified: Thu, 01 Oct 2026 23:49:48 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b756f0e369f200889a72901f8dc441e783786abb6bfaad0df79b574ffc5fa23b`  
		Last Modified: Thu, 01 Oct 2026 23:49:49 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf7d535dd5d9879fbc4a9525f4ddb867328ed3452b89d1eaffa5eeb06d3fbad`  
		Last Modified: Thu, 01 Oct 2026 23:49:49 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:4014835759073173e05d6ee9cd40b85f53c65dc0fb44d8b9ccba3e0e1550ca00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **965.4 KB (965371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786b8be380e4544eff6c9d725a0d736d208716ca031a82a9ec4c2b77cb422b9c`

```dockerfile
```

-	Layers:
	-	`sha256:05779330ab9d198151d98b72ea8bd9b0f13c21e4e7f5bbe7fdac7007021046ea`  
		Last Modified: Thu, 01 Oct 2026 23:49:47 GMT  
		Size: 934.8 KB (934762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33102fea837fc3644700bdc494da47f08a3dc554a4960c5bfa178f76185488ad`  
		Last Modified: Thu, 01 Oct 2026 23:49:47 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:fdd764d3587849b2956808c8f9c8357aae591937f47e4ece070aa569bdb30ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82981996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29f23978d110f7ce779193c9d0d28493e88a2e5e6c5fdb737c352f347bb7d722`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 23:49:44 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 01 Oct 2026 23:49:45 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 01 Oct 2026 23:49:46 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 01 Oct 2026 23:49:46 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 01 Oct 2026 23:49:49 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 01 Oct 2026 23:49:49 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 01 Oct 2026 23:49:49 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 01 Oct 2026 23:49:51 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 01 Oct 2026 23:49:51 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 01 Oct 2026 23:49:51 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 01 Oct 2026 23:49:51 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 01 Oct 2026 23:49:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 01 Oct 2026 23:49:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Oct 2026 23:49:51 GMT
CMD ["influxd"]
# Thu, 01 Oct 2026 23:49:51 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 01 Oct 2026 23:49:51 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 01 Oct 2026 23:49:51 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 01 Oct 2026 23:49:51 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 01 Oct 2026 23:49:51 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ac9248ecf2ce6f46d4ff1cc2ed90af16494ebc4fc2e2936310889edd4a09f3`  
		Last Modified: Thu, 01 Oct 2026 23:50:01 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd15d28cca5fa6c01228187aaa61ed5ee872220456d1c529b2e759a489873ad`  
		Last Modified: Thu, 01 Oct 2026 23:50:01 GMT  
		Size: 10.2 MB (10211311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca33d5b7d533dcc20fcdc9af5df16b6911b353890b3a7b77d2ba7f384bbab04`  
		Last Modified: Thu, 01 Oct 2026 23:50:01 GMT  
		Size: 3.5 MB (3459175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5989d8ca130138590ceb42dcb58f3dc7d60012590341628ef3ec69805112adb`  
		Last Modified: Thu, 01 Oct 2026 23:50:01 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19305c3b93db7212e006e90abcc6e2dbbebb248e406d95c7199b54b1d01e375d`  
		Last Modified: Thu, 01 Oct 2026 23:50:04 GMT  
		Size: 53.6 MB (53636817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539ccc90243adcade16aa9d63fc6e7a0ae0c0ac6c266d433ec40bc5a3ea46109`  
		Last Modified: Thu, 01 Oct 2026 23:50:03 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39f59ef3f81e9a0cdca58518813202303f43452c4bfef7a16a1a5dd01d2beca`  
		Last Modified: Thu, 01 Oct 2026 23:50:03 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18284705bf5001f5b51d833e787d54faf95ec4b5f7703c60efa0517b0fb7df1`  
		Last Modified: Thu, 01 Oct 2026 23:50:03 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1386b9f342c504c8d9f20ed7bbff68c0d2414fbbc1a4cc225d94a7fc491e77b7`  
		Last Modified: Thu, 01 Oct 2026 23:50:04 GMT  
		Size: 6.7 KB (6675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b7c89c5feee7db7bb98ac147e3ac5e9c493c438a9fe55e019bc63e8f0cc34f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.2 KB (964164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8314c86f43a95065c63ac9a491003700d609491c0d8eee2a89f38e1a5bb656`

```dockerfile
```

-	Layers:
	-	`sha256:db18f28be7a515c3b59048a24961128c0292dabc0134342d77527b45ce523d83`  
		Last Modified: Thu, 01 Oct 2026 23:50:01 GMT  
		Size: 933.4 KB (933361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a79d31ad5810925fb324996df27fe60c63b7f983d93cf9fe84008b57d37c6ef2`  
		Last Modified: Thu, 01 Oct 2026 23:50:01 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json
