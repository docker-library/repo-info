## `influxdb:2-alpine`

```console
$ docker pull influxdb@sha256:385d5fe4746f4c087d6468519f023b24b425c0848a63b3185de8681e0f94d285
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:61d308cedd71950b2751edba0e706c39e583ea002497b485616f7139c4ea597a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86862970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a7127e375a3168559ab41160a6dac397420576bb16e7f5c6791e14509e9d92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:06 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:25:07 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:25:08 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 21 Oct 2026 21:25:08 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 21 Oct 2026 21:25:11 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 21 Oct 2026 21:25:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 21 Oct 2026 21:25:11 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 21 Oct 2026 21:25:12 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 21 Oct 2026 21:25:12 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 21 Oct 2026 21:25:12 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 21 Oct 2026 21:25:12 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 21 Oct 2026 21:25:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:25:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:12 GMT
CMD ["influxd"]
# Wed, 21 Oct 2026 21:25:12 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 21 Oct 2026 21:25:12 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 21 Oct 2026 21:25:12 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 21 Oct 2026 21:25:12 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 21 Oct 2026 21:25:12 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483278f2b6f4c050cfb5a980c3c224392fde9887594b2eb2ac14b7b4a5678bf0`  
		Last Modified: Wed, 21 Oct 2026 21:25:22 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff8e938978ff41fb920760df59647b41547924223e75beac7370d1b2096dc4e`  
		Last Modified: Wed, 21 Oct 2026 21:25:22 GMT  
		Size: 10.2 MB (10247127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7dbf64909ab5ac7ce7ffc25c9d8ab7ae201c1dfdf2dc905e0affed8b73d05e`  
		Last Modified: Wed, 21 Oct 2026 21:25:22 GMT  
		Size: 3.8 MB (3822788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be241512db78c87b26b554d3cff31411690b274aac8ae432896c55a25e757df7`  
		Last Modified: Wed, 21 Oct 2026 21:25:22 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8888bed468d0c8aba67c1581f84735202cd342207be0c6993b27f5be0cf620c6`  
		Last Modified: Wed, 21 Oct 2026 21:25:25 GMT  
		Size: 56.5 MB (56510582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755047f77d2173206bd259a27a3aebc80acb45ccb966c0d32c5a416ee7ed774b`  
		Last Modified: Wed, 21 Oct 2026 21:25:24 GMT  
		Size: 12.4 MB (12421798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b56213b6255102aa8ae7a139797bc5b113c9107b0b1cbfb7f9ba3e36c0d0cf`  
		Last Modified: Wed, 21 Oct 2026 21:25:24 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fddcda105df620cf1a1681a31f32edeeb2c52a55ab8e7d29691054738002d76`  
		Last Modified: Wed, 21 Oct 2026 21:25:24 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0698e674a0581facb5cdf076ae81430890f5c196d4d0d8ac595155512e6a1cf6`  
		Last Modified: Wed, 21 Oct 2026 21:25:25 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf69b7a762f51be60faad0972202cb9dd3afc93e6cfc1e1f67e8cc2c152176a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **963.4 KB (963434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea5d5062d2fe93dfc3a43f9c90244250c9e038ed591a161e564f143c57c303d`

```dockerfile
```

-	Layers:
	-	`sha256:04435541fcf42d7b53775a498cec3abad6078ae7b191bd8779ad60825a4d33a4`  
		Last Modified: Wed, 21 Oct 2026 21:25:22 GMT  
		Size: 932.8 KB (932825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a219b89b03f3bbfb65a0488501c64c8606a53a8e749a7e506b83571b0d5289a3`  
		Last Modified: Wed, 21 Oct 2026 21:25:22 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5f1136dbfaadef4d184b741c3a85c9fd038b2f8f18297bad563ceba6acfa794a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82985103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00fc7e2ced19a279648b1f3825861edc2234c7e9f11bcd06260021f8059a7203`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:23:33 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 21:23:57 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 21 Oct 2026 21:23:58 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 21 Oct 2026 21:23:58 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 21 Oct 2026 21:24:01 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 21 Oct 2026 21:24:01 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 21 Oct 2026 21:24:01 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 21 Oct 2026 21:24:02 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 21 Oct 2026 21:24:02 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 21 Oct 2026 21:24:02 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 21 Oct 2026 21:24:02 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 21 Oct 2026 21:24:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:24:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 21:24:02 GMT
CMD ["influxd"]
# Wed, 21 Oct 2026 21:24:02 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 21 Oct 2026 21:24:02 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 21 Oct 2026 21:24:02 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 21 Oct 2026 21:24:02 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 21 Oct 2026 21:24:02 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25e9c65341ea22bde9d2ffff8ab97aa5ce350b15ea7b02c58e13be3927cbc0e`  
		Last Modified: Wed, 21 Oct 2026 21:23:48 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d153e8ca41bdd367c9f3e783d16b621341b2625c4ffd60a6a7691190ec44febb`  
		Last Modified: Wed, 21 Oct 2026 21:24:13 GMT  
		Size: 10.2 MB (10210876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f357f8232cc26e51ed1635e2f175c4fed95149cacd0e510eb2337eba6b41a29c`  
		Last Modified: Wed, 21 Oct 2026 21:24:12 GMT  
		Size: 3.5 MB (3459166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a600061287eaa403ac3761488d26af6282507493c6ce6827cadf9661edec44`  
		Last Modified: Wed, 21 Oct 2026 21:24:12 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002b747bba06dd5374a5aac33dde540c6ccc6fbd95a14c42461e25a67e5f4088`  
		Last Modified: Wed, 21 Oct 2026 21:24:14 GMT  
		Size: 53.6 MB (53636830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfb0afa7621d57e659f4e7c54e78fcd6561335412c9ce1755a029e771d79161`  
		Last Modified: Wed, 21 Oct 2026 21:24:14 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c410921f94e36f6ab2a7d8579f5a04eb960d30720ced986c7bc7dcdb2bab9b`  
		Last Modified: Wed, 21 Oct 2026 21:24:14 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0343f3d55f0beb1e08afa0a45f6d0c10d5d792ffa9ed0d75e0d13918135909`  
		Last Modified: Wed, 21 Oct 2026 21:24:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde5adaf0ca2f1b6bcfab0d7ff7deb7553afb0d3848f651e879fe7b3be24b5d1`  
		Last Modified: Wed, 21 Oct 2026 21:24:15 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:630246a7f08429570e45cdf4e8b01bb7fffb65e38aa690b5ef91f4566125b414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.2 KB (962227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7eab0608044ef4ab724116ff9dfd34ea4b3379609f9ce7deb7644bc891758b`

```dockerfile
```

-	Layers:
	-	`sha256:c925afc16c953f7bb7dde02caa72c5b4d246f9b8c379fb2ff60df0da3264b97a`  
		Last Modified: Wed, 21 Oct 2026 21:24:12 GMT  
		Size: 931.4 KB (931424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83634ed3d74b8d4295a3b2d7e74f5d3f24156e2fc0bfeadc863e32acf7d4df7f`  
		Last Modified: Wed, 21 Oct 2026 21:24:12 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json
