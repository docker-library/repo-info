<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.10-data`](#influxdb110-data)
-	[`influxdb:1.10-data-alpine`](#influxdb110-data-alpine)
-	[`influxdb:1.10-meta`](#influxdb110-meta)
-	[`influxdb:1.10-meta-alpine`](#influxdb110-meta-alpine)
-	[`influxdb:1.10.0-data`](#influxdb1100-data)
-	[`influxdb:1.10.0-data-alpine`](#influxdb1100-data-alpine)
-	[`influxdb:1.10.0-meta`](#influxdb1100-meta)
-	[`influxdb:1.10.0-meta-alpine`](#influxdb1100-meta-alpine)
-	[`influxdb:1.8`](#influxdb18)
-	[`influxdb:1.8-alpine`](#influxdb18-alpine)
-	[`influxdb:1.8-data`](#influxdb18-data)
-	[`influxdb:1.8-data-alpine`](#influxdb18-data-alpine)
-	[`influxdb:1.8-meta`](#influxdb18-meta)
-	[`influxdb:1.8-meta-alpine`](#influxdb18-meta-alpine)
-	[`influxdb:1.8.10`](#influxdb1810)
-	[`influxdb:1.8.10-alpine`](#influxdb1810-alpine)
-	[`influxdb:1.8.10-data`](#influxdb1810-data)
-	[`influxdb:1.8.10-data-alpine`](#influxdb1810-data-alpine)
-	[`influxdb:1.8.10-meta`](#influxdb1810-meta)
-	[`influxdb:1.8.10-meta-alpine`](#influxdb1810-meta-alpine)
-	[`influxdb:1.9-data`](#influxdb19-data)
-	[`influxdb:1.9-data-alpine`](#influxdb19-data-alpine)
-	[`influxdb:1.9-meta`](#influxdb19-meta)
-	[`influxdb:1.9-meta-alpine`](#influxdb19-meta-alpine)
-	[`influxdb:1.9.8-data`](#influxdb198-data)
-	[`influxdb:1.9.8-data-alpine`](#influxdb198-data-alpine)
-	[`influxdb:1.9.8-meta`](#influxdb198-meta)
-	[`influxdb:1.9.8-meta-alpine`](#influxdb198-meta-alpine)
-	[`influxdb:2.4`](#influxdb24)
-	[`influxdb:2.4-alpine`](#influxdb24-alpine)
-	[`influxdb:2.4.0`](#influxdb240)
-	[`influxdb:2.4.0-alpine`](#influxdb240-alpine)
-	[`influxdb:2.5`](#influxdb25)
-	[`influxdb:2.5-alpine`](#influxdb25-alpine)
-	[`influxdb:2.5.1`](#influxdb251)
-	[`influxdb:2.5.1-alpine`](#influxdb251-alpine)
-	[`influxdb:2.6`](#influxdb26)
-	[`influxdb:2.6-alpine`](#influxdb26-alpine)
-	[`influxdb:2.6.1`](#influxdb261)
-	[`influxdb:2.6.1-alpine`](#influxdb261-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.10-data`

```console
$ docker pull influxdb@sha256:32afff4ca87610e0333b0efbdb021809cb14ac5307e13f481f62e20002cee2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10-data` - linux; amd64

```console
$ docker pull influxdb@sha256:79a0e5c682de051ea574edfe34049eaad16963459a025e5afb4a679dc4505e74
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101763305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ca65c2639b6aa23da38b2e6df411cbc57f3f4c09eddd268e33cba92e2b8357`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:34 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Wed, 11 Jan 2023 17:50:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:37 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:37 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:37 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:37 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596712880cb20b617c985b6cfa69d20b46e3708aab27fcf5d502dec59a5e336`  
		Last Modified: Wed, 11 Jan 2023 17:53:43 GMT  
		Size: 30.7 MB (30693320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f497cef6765833b5382dae968349b2a4888564571e4fdec5d57338c6de0df3b7`  
		Last Modified: Wed, 11 Jan 2023 17:53:38 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fc17e20672e3add1eac751f460eb0ce93a8b4b57be8cc3301dc96b8881373c`  
		Last Modified: Wed, 11 Jan 2023 17:53:38 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64394f05e51e1acfa8cc62a135bab220f3b28e7ff80bafc470ed45012d35c69`  
		Last Modified: Wed, 11 Jan 2023 17:53:38 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10-data-alpine`

```console
$ docker pull influxdb@sha256:97a54cdaa79fde21531561711a49a45d5219e83e251f804ba0d8aaeace153e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1b5f43f86c108b08915587a7836e791e4a9d77ed1a83635b55e6ae5d7b3fb58b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34961985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f20e981428ad6caf309ff381c1a14f62f2f9e4ecc629726f557516278fc5f30`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:05 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Thu, 06 Oct 2022 22:41:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:41:11 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:41:11 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:41:12 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:41:12 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:41:12 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:41:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:41:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd8ff045fb30dc7039026afa7b842b02209eff1782d50c52626aded0e903d69`  
		Last Modified: Thu, 06 Oct 2022 22:44:40 GMT  
		Size: 30.7 MB (30651262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b816d358bef8a0bf29346a7d2ca321c2668410b9c104f5025c20346a1ffed980`  
		Last Modified: Thu, 06 Oct 2022 22:44:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108fb18700076955d74033f3a3e842d99e982f694b2ffba5e3b6ec53d6b93cdd`  
		Last Modified: Thu, 06 Oct 2022 22:44:35 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e082e9ca7b8d9e85406af28023733f541b9e792e663ff66da311d3390711b00f`  
		Last Modified: Thu, 06 Oct 2022 22:44:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10-meta`

```console
$ docker pull influxdb@sha256:d9078a6fc93c13e461014352326a6fbafae6996ea7c668f42b7681b41d885859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:356926f9643e3a10d257c0ec2f53aba0f241f7ab5e018fb1a4b432297acfc23b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82975993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d92a64767657ff634a7ce2639e19983768504ac2040b7835eedef9a68f53458`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:34 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Wed, 11 Jan 2023 17:50:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:43 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:43 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:43 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdd5405046b8ca034e727a93d0f366b7d690673e6671272b2da668b5478eb63`  
		Last Modified: Wed, 11 Jan 2023 17:53:54 GMT  
		Size: 11.9 MB (11907212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427da78b368a5e4885830e56713ba88eace40aa49f75b8e1d5717399e9365d62`  
		Last Modified: Wed, 11 Jan 2023 17:53:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beaeb39ec752b1672dcd889c712d51bdb0650c76c5c064bb4a3a805569f5a2f`  
		Last Modified: Wed, 11 Jan 2023 17:53:52 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10-meta-alpine`

```console
$ docker pull influxdb@sha256:46a7513ea128bd01532c81463c59e069af801f8cd31e157854f7fec901aeae6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:3870d14532d6ab3ef7c1bd7c4faaa75397b44770abbec610bcab034f166c2cdc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16181334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215f5c4a24b25c6869311fe1fa9505fd0c6366b8894118556571709c0865069d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:05 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Thu, 06 Oct 2022 22:41:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:41:21 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 06 Oct 2022 22:41:21 GMT
EXPOSE 8091
# Thu, 06 Oct 2022 22:41:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:41:22 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:41:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:41:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0068a3da6be923bef1d4268544334826869f86960167887234f892f6cf4d479`  
		Last Modified: Thu, 06 Oct 2022 22:44:52 GMT  
		Size: 11.9 MB (11871815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8cc9a0c8fbc75118e4bf898decc19f9f1ae6667aa1008dc7aa52aa0cc20877`  
		Last Modified: Thu, 06 Oct 2022 22:44:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2995883e4c21340e6643e44cfce84ce331434205ebb233093a8af992b8d03ce5`  
		Last Modified: Thu, 06 Oct 2022 22:44:50 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10.0-data`

```console
$ docker pull influxdb@sha256:32afff4ca87610e0333b0efbdb021809cb14ac5307e13f481f62e20002cee2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10.0-data` - linux; amd64

```console
$ docker pull influxdb@sha256:79a0e5c682de051ea574edfe34049eaad16963459a025e5afb4a679dc4505e74
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101763305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ca65c2639b6aa23da38b2e6df411cbc57f3f4c09eddd268e33cba92e2b8357`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:34 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Wed, 11 Jan 2023 17:50:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:37 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:37 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:37 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:37 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596712880cb20b617c985b6cfa69d20b46e3708aab27fcf5d502dec59a5e336`  
		Last Modified: Wed, 11 Jan 2023 17:53:43 GMT  
		Size: 30.7 MB (30693320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f497cef6765833b5382dae968349b2a4888564571e4fdec5d57338c6de0df3b7`  
		Last Modified: Wed, 11 Jan 2023 17:53:38 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15fc17e20672e3add1eac751f460eb0ce93a8b4b57be8cc3301dc96b8881373c`  
		Last Modified: Wed, 11 Jan 2023 17:53:38 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64394f05e51e1acfa8cc62a135bab220f3b28e7ff80bafc470ed45012d35c69`  
		Last Modified: Wed, 11 Jan 2023 17:53:38 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10.0-data-alpine`

```console
$ docker pull influxdb@sha256:97a54cdaa79fde21531561711a49a45d5219e83e251f804ba0d8aaeace153e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10.0-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1b5f43f86c108b08915587a7836e791e4a9d77ed1a83635b55e6ae5d7b3fb58b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34961985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f20e981428ad6caf309ff381c1a14f62f2f9e4ecc629726f557516278fc5f30`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:05 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Thu, 06 Oct 2022 22:41:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:41:11 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:41:11 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:41:12 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:41:12 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:41:12 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:41:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:41:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd8ff045fb30dc7039026afa7b842b02209eff1782d50c52626aded0e903d69`  
		Last Modified: Thu, 06 Oct 2022 22:44:40 GMT  
		Size: 30.7 MB (30651262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b816d358bef8a0bf29346a7d2ca321c2668410b9c104f5025c20346a1ffed980`  
		Last Modified: Thu, 06 Oct 2022 22:44:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108fb18700076955d74033f3a3e842d99e982f694b2ffba5e3b6ec53d6b93cdd`  
		Last Modified: Thu, 06 Oct 2022 22:44:35 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e082e9ca7b8d9e85406af28023733f541b9e792e663ff66da311d3390711b00f`  
		Last Modified: Thu, 06 Oct 2022 22:44:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10.0-meta`

```console
$ docker pull influxdb@sha256:d9078a6fc93c13e461014352326a6fbafae6996ea7c668f42b7681b41d885859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10.0-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:356926f9643e3a10d257c0ec2f53aba0f241f7ab5e018fb1a4b432297acfc23b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82975993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d92a64767657ff634a7ce2639e19983768504ac2040b7835eedef9a68f53458`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:34 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Wed, 11 Jan 2023 17:50:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:43 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:43 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:43 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdd5405046b8ca034e727a93d0f366b7d690673e6671272b2da668b5478eb63`  
		Last Modified: Wed, 11 Jan 2023 17:53:54 GMT  
		Size: 11.9 MB (11907212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427da78b368a5e4885830e56713ba88eace40aa49f75b8e1d5717399e9365d62`  
		Last Modified: Wed, 11 Jan 2023 17:53:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beaeb39ec752b1672dcd889c712d51bdb0650c76c5c064bb4a3a805569f5a2f`  
		Last Modified: Wed, 11 Jan 2023 17:53:52 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.10.0-meta-alpine`

```console
$ docker pull influxdb@sha256:46a7513ea128bd01532c81463c59e069af801f8cd31e157854f7fec901aeae6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.10.0-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:3870d14532d6ab3ef7c1bd7c4faaa75397b44770abbec610bcab034f166c2cdc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16181334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215f5c4a24b25c6869311fe1fa9505fd0c6366b8894118556571709c0865069d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:05 GMT
ENV INFLUXDB_VERSION=1.10.0-c1.10.0
# Thu, 06 Oct 2022 22:41:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:41:21 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 06 Oct 2022 22:41:21 GMT
EXPOSE 8091
# Thu, 06 Oct 2022 22:41:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:41:22 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:41:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:41:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0068a3da6be923bef1d4268544334826869f86960167887234f892f6cf4d479`  
		Last Modified: Thu, 06 Oct 2022 22:44:52 GMT  
		Size: 11.9 MB (11871815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8cc9a0c8fbc75118e4bf898decc19f9f1ae6667aa1008dc7aa52aa0cc20877`  
		Last Modified: Thu, 06 Oct 2022 22:44:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2995883e4c21340e6643e44cfce84ce331434205ebb233093a8af992b8d03ce5`  
		Last Modified: Thu, 06 Oct 2022 22:44:50 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8`

```console
$ docker pull influxdb@sha256:3dd5c0fd48b77b0e4b04d5bd6e983e30a2c66cb8e373f351132e80cd08db5fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.8` - linux; amd64

```console
$ docker pull influxdb@sha256:da86d34e0b672d344fbccf6b52c41996b38c50d76565acd102a773fc66f10d2a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (125955707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe8eaa7401a8b13a4383c70c502b6567160139da772c93ec0a19a9fd350ee1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:49:57 GMT
ENV INFLUXDB_VERSION=1.8.10
# Wed, 11 Jan 2023 17:50:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 11 Jan 2023 17:50:01 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:01 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:01 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:02 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:02 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aae834f50df01c245b5c6cb15788cc9c9d6d46ae2c61378685942bbaf486c6`  
		Last Modified: Wed, 11 Jan 2023 17:52:28 GMT  
		Size: 54.9 MB (54885781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ebf85949cb0f3cfd1317d22195643a81e0ca2f58ebf3fd5433bc5d33ebedd3`  
		Last Modified: Wed, 11 Jan 2023 17:52:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba417bd43bf2bc0f2dbdf49b7fc61417f3f4c9110dc6d48bfac1cf7f4615b82`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1d9ab0ac81a32674f3d640c68e014820d3a631c232da99b9a2dc16189c84e1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.8` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:b277fa9e380b5c1cd9ecc5744f975124d36b18b48f253c0497e4cbad9c11dd3d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116957386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3785f350e6c9f6ec76795d2a9ae22a31bb388a0c42c718060ded826d400ff027`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:17 GMT
ADD file:48f6407691a382c3ad731f05f78d4210efd40f1a00abfd6c043d8401c6ca1811 in / 
# Wed, 11 Jan 2023 04:00:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:33:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:33:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 21:03:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 21:03:35 GMT
ENV INFLUXDB_VERSION=1.8.10
# Wed, 11 Jan 2023 21:03:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 11 Jan 2023 21:03:41 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 21:03:41 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 21:03:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 21:03:41 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 11 Jan 2023 21:03:41 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 21:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 21:03:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d705c97ea3a2300e9dda9a18ff662a98c2811b41147a15d4f4791f475ce8be47`  
		Last Modified: Wed, 11 Jan 2023 04:07:17 GMT  
		Size: 50.2 MB (50190808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40c8c22d251f4b5db1459714e722a41f58f37155eb88da1b4155fd032f90153`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 4.9 MB (4931090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97570844854b4122edbc4c60110b4f0690133f761a66c1d6b732b80d4e1b26be`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 10.2 MB (10217786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874b203435a58d1774391be70ecccf6939772c15418e5871f7412855a4394ce6`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca395afeccd6019d0c90829412ac4cbc6e26399e3f9deed6de1e9e827bef534`  
		Last Modified: Wed, 11 Jan 2023 21:04:03 GMT  
		Size: 51.6 MB (51613126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735ba2b7f54a1d95243dd46d1f4f30f56ed1ef1ad662d188899c54926af50e`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51151fb8f537750310be6dd6fcfe5e4ce98f05e483074f2d248a2f2fd0ecb99b`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71d4e8b555c1e75ba7c8f8427994d464960e9dbb0c47200b1ca45ab9ee92c5`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:444bcf6344b144a97eb6ea1523424d58517a663de55399c2f09fb13040bc2646
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120939901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13861afb3ca3d908c8e770c83a9692539aa45c44f644a2abf07477b6c170e122`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:24:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:24:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 18:04:35 GMT
ENV INFLUXDB_VERSION=1.8.10
# Wed, 11 Jan 2023 18:04:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 11 Jan 2023 18:04:39 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 18:04:39 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:04:39 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 18:04:39 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 11 Jan 2023 18:04:39 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 18:04:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:04:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b716680367d1dac0e54c48f75506323e0bb03628542a0fd6db39efeeee9adf5`  
		Last Modified: Wed, 11 Jan 2023 03:31:34 GMT  
		Size: 5.1 MB (5149712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0855378f8903bde22cfbcee08cd239678716cf01f24a3fca9478ef4121a84d91`  
		Last Modified: Wed, 11 Jan 2023 03:31:35 GMT  
		Size: 10.9 MB (10873659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a48f23114b43fa4eeb532a57ecbb32bcdbffee9db0c66d27dcd5768dafc7d91`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 2.9 KB (2898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3e88f1d58a85b6bc9a108dc1c9772b3d5a1af98fe93b48a322344f84b18958`  
		Last Modified: Wed, 11 Jan 2023 18:06:10 GMT  
		Size: 51.2 MB (51230056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ad8b1ddecdab098bc296edcb0d922c113b7a408e95b8fc319aa8407bd25c9c`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cedbb8d170b4410b991e70d254946956bcd71af5a03ebc7b264143c28c8d3d`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f4431a4b8fd5034f8ceebdbb5372c780b97d372fcc9f1338a0b67fba61f944`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8-alpine`

```console
$ docker pull influxdb@sha256:d21936aaa13a7b4761da421bba378f0addd1aafa007454fd3d0cb63be3750ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c5d58fac08a6bdf1cb8f3d91921c7a7abb7715a32807a7e25b3b5eebb7f429a3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (58957254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a20ca475f19e1210ad8ba2c761f769d4eb17901b78a3b03f78679db239de760`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:06 GMT
ENV INFLUXDB_VERSION=1.8.10
# Thu, 06 Oct 2022 22:40:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     chmod +x /usr/src/influxdb-*/influx              /usr/src/influxdb-*/influx_inspect              /usr/src/influxdb-*/influx_stress              /usr/src/influxdb-*/influxd &&    mv /usr/src/influxdb-*/influx        /usr/src/influxdb-*/influx_inspect        /usr/src/influxdb-*/influx_stress         /usr/src/influxdb-*/influxd        /usr/bin/ &&    gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:14 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:40:14 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:40:14 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:14 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:15 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:40:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b6f6ecc6282fc9eb0bac613bb9bf9b890a3434564e38cfb98df5dae2242a86`  
		Last Modified: Thu, 06 Oct 2022 22:43:19 GMT  
		Size: 54.6 MB (54646588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34625061a8625de99f662d174b92936f1d39b5ab61895393262420ee5f3ca4`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52bf40c5860e1c71b631c1f61541dc9b7e3e6ccf415405a8a3b6d1c390ce083`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7859bec41186dc8c5c1df193da40f96d5c0baa612bb7bb5d4b9bc677beb5ea`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8-data`

```console
$ docker pull influxdb@sha256:342ba309f765d854f5f2407811e6155d838505cbf7f58da2e997dd8d9c087da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8-data` - linux; amd64

```console
$ docker pull influxdb@sha256:cf0c86f40cbb9c24fcf5ce8072d9c48a08e7ce3e89cfa2c6b744bd4e9fd1812c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127775093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc9dcdac4fcc0b58c4239ee84442fba9392e5dd730b25bb64a89d2479d06c76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:06 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Wed, 11 Jan 2023 17:50:09 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:10 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1331ac8c6b20fc1d7c5e1043da66fa03909bbdfa04314dfcdbb4dbae178cc0`  
		Last Modified: Wed, 11 Jan 2023 17:52:45 GMT  
		Size: 56.7 MB (56705106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896c6ef7f98d7453f7f79355cf20f71be47c16556621bd09eaf48999b376be5`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f5e78cf88479c0c9cdf033b45410ed9bbf2935111072c3a1c4f913ba515d6c`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13553d06afcf9308c4ef8899bf8b25a1fcb8d62c097a23c2cce374ed96406c2b`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8-data-alpine`

```console
$ docker pull influxdb@sha256:7bd3639a58705b4e8a844d0031ae348220ce36add6e4cd06de72f2ecf550cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7c75c37bc1a924e38c6c1dfd32bc06529ae837a70f8eac0c9d20a6b4b9ad2c3d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60814393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf835835b494592c58fe798cbd65be7f2098c2c7c2832d08bae5e48326fb2c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:20 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Thu, 06 Oct 2022 22:40:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:29 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:40:29 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:40:30 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:30 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:30 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:40:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce3f09ef3045575d0c8013e9b79575368b4854f9f960ca8ebf623845bc7c4bc`  
		Last Modified: Thu, 06 Oct 2022 22:43:38 GMT  
		Size: 56.5 MB (56503668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ce550ab9d131d604789b351c758fbcb49c943245aca7e308df39b5699692a`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66220e5ba00d4c40fa7c1f459663fa010dd302ffb46b3470cc651e35f9223d19`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c327b9a7fb58412fa6ce33a8a8a5fb8d558c4d63454fd1b354a8e08977057b9`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8-meta`

```console
$ docker pull influxdb@sha256:e5defde75049e931842356b73b5b111214c159eec11b95f4b12f322a58a46ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:26a1f9c4f41c24163271ad01e1f72c3cee8c5585a1540c40a425424a3bce1b1f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94481556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dbd58263a20f9ac9461df19776ed0b11d9670165ac912b46856bc9f3761def`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:06 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Wed, 11 Jan 2023 17:50:16 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:16 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:16 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:17 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:17 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae04e4411bf42f9719fd8f70ccb6a120dba859ede432f87631e67e0a69a6feec`  
		Last Modified: Wed, 11 Jan 2023 17:53:00 GMT  
		Size: 23.4 MB (23412775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842ca99e5db7409fc060986cea7546434115ba16e0788dc6f57ac641ee7f0e0e`  
		Last Modified: Wed, 11 Jan 2023 17:52:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5a793bcae85f6f8e821b5259599b3b01dd26f6c41fdea40937a9a7fc26933`  
		Last Modified: Wed, 11 Jan 2023 17:52:57 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8-meta-alpine`

```console
$ docker pull influxdb@sha256:e54c4cb5759595c14e3d8e9e84cf6d500951658b9cd1e5297c978e8516c73c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b0e146b30f81e6588cda723946c2e8b6feca9e6932e57a59585bf5ae43890db4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27602995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afcdc6818b36dab0a9b82d98969c463aca2b85fd9602d1344baf017917c3c9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:20 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Thu, 06 Oct 2022 22:40:39 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:40 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 06 Oct 2022 22:40:40 GMT
EXPOSE 8091
# Thu, 06 Oct 2022 22:40:40 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:40 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:40 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2888fe258e30ad3d0dfc4c02cb57422a39f38c6535f624bf01a9e1a9fc3215f`  
		Last Modified: Thu, 06 Oct 2022 22:43:54 GMT  
		Size: 23.3 MB (23293473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd62607efcaec46b698b09a7ab3df2c11a01512bdadef6915d63b6ff5d9cdb9`  
		Last Modified: Thu, 06 Oct 2022 22:43:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cea404d4e11d2846f9a5d3ec2b3d200462d5d41e8ac23915813eda3bb3a1fd`  
		Last Modified: Thu, 06 Oct 2022 22:43:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8.10`

```console
$ docker pull influxdb@sha256:3dd5c0fd48b77b0e4b04d5bd6e983e30a2c66cb8e373f351132e80cd08db5fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.8.10` - linux; amd64

```console
$ docker pull influxdb@sha256:da86d34e0b672d344fbccf6b52c41996b38c50d76565acd102a773fc66f10d2a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (125955707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe8eaa7401a8b13a4383c70c502b6567160139da772c93ec0a19a9fd350ee1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:49:57 GMT
ENV INFLUXDB_VERSION=1.8.10
# Wed, 11 Jan 2023 17:50:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 11 Jan 2023 17:50:01 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:01 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:01 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:02 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:02 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8aae834f50df01c245b5c6cb15788cc9c9d6d46ae2c61378685942bbaf486c6`  
		Last Modified: Wed, 11 Jan 2023 17:52:28 GMT  
		Size: 54.9 MB (54885781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ebf85949cb0f3cfd1317d22195643a81e0ca2f58ebf3fd5433bc5d33ebedd3`  
		Last Modified: Wed, 11 Jan 2023 17:52:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba417bd43bf2bc0f2dbdf49b7fc61417f3f4c9110dc6d48bfac1cf7f4615b82`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1d9ab0ac81a32674f3d640c68e014820d3a631c232da99b9a2dc16189c84e1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.8.10` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:b277fa9e380b5c1cd9ecc5744f975124d36b18b48f253c0497e4cbad9c11dd3d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116957386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3785f350e6c9f6ec76795d2a9ae22a31bb388a0c42c718060ded826d400ff027`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:17 GMT
ADD file:48f6407691a382c3ad731f05f78d4210efd40f1a00abfd6c043d8401c6ca1811 in / 
# Wed, 11 Jan 2023 04:00:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:33:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:33:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 21:03:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 21:03:35 GMT
ENV INFLUXDB_VERSION=1.8.10
# Wed, 11 Jan 2023 21:03:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 11 Jan 2023 21:03:41 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 21:03:41 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 21:03:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 21:03:41 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 11 Jan 2023 21:03:41 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 21:03:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 21:03:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:d705c97ea3a2300e9dda9a18ff662a98c2811b41147a15d4f4791f475ce8be47`  
		Last Modified: Wed, 11 Jan 2023 04:07:17 GMT  
		Size: 50.2 MB (50190808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40c8c22d251f4b5db1459714e722a41f58f37155eb88da1b4155fd032f90153`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 4.9 MB (4931090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97570844854b4122edbc4c60110b4f0690133f761a66c1d6b732b80d4e1b26be`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 10.2 MB (10217786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874b203435a58d1774391be70ecccf6939772c15418e5871f7412855a4394ce6`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca395afeccd6019d0c90829412ac4cbc6e26399e3f9deed6de1e9e827bef534`  
		Last Modified: Wed, 11 Jan 2023 21:04:03 GMT  
		Size: 51.6 MB (51613126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735ba2b7f54a1d95243dd46d1f4f30f56ed1ef1ad662d188899c54926af50e`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51151fb8f537750310be6dd6fcfe5e4ce98f05e483074f2d248a2f2fd0ecb99b`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb71d4e8b555c1e75ba7c8f8427994d464960e9dbb0c47200b1ca45ab9ee92c5`  
		Last Modified: Wed, 11 Jan 2023 21:03:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.8.10` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:444bcf6344b144a97eb6ea1523424d58517a663de55399c2f09fb13040bc2646
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120939901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13861afb3ca3d908c8e770c83a9692539aa45c44f644a2abf07477b6c170e122`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:24:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:24:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:35 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 18:04:35 GMT
ENV INFLUXDB_VERSION=1.8.10
# Wed, 11 Jan 2023 18:04:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 11 Jan 2023 18:04:39 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 18:04:39 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:04:39 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 18:04:39 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 11 Jan 2023 18:04:39 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 18:04:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:04:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b716680367d1dac0e54c48f75506323e0bb03628542a0fd6db39efeeee9adf5`  
		Last Modified: Wed, 11 Jan 2023 03:31:34 GMT  
		Size: 5.1 MB (5149712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0855378f8903bde22cfbcee08cd239678716cf01f24a3fca9478ef4121a84d91`  
		Last Modified: Wed, 11 Jan 2023 03:31:35 GMT  
		Size: 10.9 MB (10873659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a48f23114b43fa4eeb532a57ecbb32bcdbffee9db0c66d27dcd5768dafc7d91`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 2.9 KB (2898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3e88f1d58a85b6bc9a108dc1c9772b3d5a1af98fe93b48a322344f84b18958`  
		Last Modified: Wed, 11 Jan 2023 18:06:10 GMT  
		Size: 51.2 MB (51230056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ad8b1ddecdab098bc296edcb0d922c113b7a408e95b8fc319aa8407bd25c9c`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cedbb8d170b4410b991e70d254946956bcd71af5a03ebc7b264143c28c8d3d`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f4431a4b8fd5034f8ceebdbb5372c780b97d372fcc9f1338a0b67fba61f944`  
		Last Modified: Wed, 11 Jan 2023 18:06:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8.10-alpine`

```console
$ docker pull influxdb@sha256:d21936aaa13a7b4761da421bba378f0addd1aafa007454fd3d0cb63be3750ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8.10-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c5d58fac08a6bdf1cb8f3d91921c7a7abb7715a32807a7e25b3b5eebb7f429a3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (58957254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a20ca475f19e1210ad8ba2c761f769d4eb17901b78a3b03f78679db239de760`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:06 GMT
ENV INFLUXDB_VERSION=1.8.10
# Thu, 06 Oct 2022 22:40:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     chmod +x /usr/src/influxdb-*/influx              /usr/src/influxdb-*/influx_inspect              /usr/src/influxdb-*/influx_stress              /usr/src/influxdb-*/influxd &&    mv /usr/src/influxdb-*/influx        /usr/src/influxdb-*/influx_inspect        /usr/src/influxdb-*/influx_stress         /usr/src/influxdb-*/influxd        /usr/bin/ &&    gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:14 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:40:14 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:40:14 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:14 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:15 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:40:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b6f6ecc6282fc9eb0bac613bb9bf9b890a3434564e38cfb98df5dae2242a86`  
		Last Modified: Thu, 06 Oct 2022 22:43:19 GMT  
		Size: 54.6 MB (54646588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34625061a8625de99f662d174b92936f1d39b5ab61895393262420ee5f3ca4`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52bf40c5860e1c71b631c1f61541dc9b7e3e6ccf415405a8a3b6d1c390ce083`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7859bec41186dc8c5c1df193da40f96d5c0baa612bb7bb5d4b9bc677beb5ea`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8.10-data`

```console
$ docker pull influxdb@sha256:342ba309f765d854f5f2407811e6155d838505cbf7f58da2e997dd8d9c087da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8.10-data` - linux; amd64

```console
$ docker pull influxdb@sha256:cf0c86f40cbb9c24fcf5ce8072d9c48a08e7ce3e89cfa2c6b744bd4e9fd1812c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127775093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc9dcdac4fcc0b58c4239ee84442fba9392e5dd730b25bb64a89d2479d06c76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:06 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Wed, 11 Jan 2023 17:50:09 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:10 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1331ac8c6b20fc1d7c5e1043da66fa03909bbdfa04314dfcdbb4dbae178cc0`  
		Last Modified: Wed, 11 Jan 2023 17:52:45 GMT  
		Size: 56.7 MB (56705106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896c6ef7f98d7453f7f79355cf20f71be47c16556621bd09eaf48999b376be5`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f5e78cf88479c0c9cdf033b45410ed9bbf2935111072c3a1c4f913ba515d6c`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13553d06afcf9308c4ef8899bf8b25a1fcb8d62c097a23c2cce374ed96406c2b`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8.10-data-alpine`

```console
$ docker pull influxdb@sha256:7bd3639a58705b4e8a844d0031ae348220ce36add6e4cd06de72f2ecf550cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8.10-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7c75c37bc1a924e38c6c1dfd32bc06529ae837a70f8eac0c9d20a6b4b9ad2c3d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60814393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf835835b494592c58fe798cbd65be7f2098c2c7c2832d08bae5e48326fb2c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:20 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Thu, 06 Oct 2022 22:40:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:29 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:40:29 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:40:30 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:30 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:30 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:40:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce3f09ef3045575d0c8013e9b79575368b4854f9f960ca8ebf623845bc7c4bc`  
		Last Modified: Thu, 06 Oct 2022 22:43:38 GMT  
		Size: 56.5 MB (56503668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ce550ab9d131d604789b351c758fbcb49c943245aca7e308df39b5699692a`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66220e5ba00d4c40fa7c1f459663fa010dd302ffb46b3470cc651e35f9223d19`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c327b9a7fb58412fa6ce33a8a8a5fb8d558c4d63454fd1b354a8e08977057b9`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8.10-meta`

```console
$ docker pull influxdb@sha256:e5defde75049e931842356b73b5b111214c159eec11b95f4b12f322a58a46ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8.10-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:26a1f9c4f41c24163271ad01e1f72c3cee8c5585a1540c40a425424a3bce1b1f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94481556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dbd58263a20f9ac9461df19776ed0b11d9670165ac912b46856bc9f3761def`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:06 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Wed, 11 Jan 2023 17:50:16 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:16 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:16 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:17 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:17 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae04e4411bf42f9719fd8f70ccb6a120dba859ede432f87631e67e0a69a6feec`  
		Last Modified: Wed, 11 Jan 2023 17:53:00 GMT  
		Size: 23.4 MB (23412775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842ca99e5db7409fc060986cea7546434115ba16e0788dc6f57ac641ee7f0e0e`  
		Last Modified: Wed, 11 Jan 2023 17:52:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5a793bcae85f6f8e821b5259599b3b01dd26f6c41fdea40937a9a7fc26933`  
		Last Modified: Wed, 11 Jan 2023 17:52:57 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.8.10-meta-alpine`

```console
$ docker pull influxdb@sha256:e54c4cb5759595c14e3d8e9e84cf6d500951658b9cd1e5297c978e8516c73c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.8.10-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b0e146b30f81e6588cda723946c2e8b6feca9e6932e57a59585bf5ae43890db4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27602995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afcdc6818b36dab0a9b82d98969c463aca2b85fd9602d1344baf017917c3c9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:20 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Thu, 06 Oct 2022 22:40:39 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:40 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 06 Oct 2022 22:40:40 GMT
EXPOSE 8091
# Thu, 06 Oct 2022 22:40:40 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:40 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:40 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2888fe258e30ad3d0dfc4c02cb57422a39f38c6535f624bf01a9e1a9fc3215f`  
		Last Modified: Thu, 06 Oct 2022 22:43:54 GMT  
		Size: 23.3 MB (23293473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd62607efcaec46b698b09a7ab3df2c11a01512bdadef6915d63b6ff5d9cdb9`  
		Last Modified: Thu, 06 Oct 2022 22:43:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cea404d4e11d2846f9a5d3ec2b3d200462d5d41e8ac23915813eda3bb3a1fd`  
		Last Modified: Thu, 06 Oct 2022 22:43:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9-data`

```console
$ docker pull influxdb@sha256:86bff610321117949255c39f981ccf9a47229179b05a7372e69395d6775a7870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9-data` - linux; amd64

```console
$ docker pull influxdb@sha256:3eb84f4fbf47449a487f318da2478afc381887c0e23a15f7669cbe790f0ec287
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dd300c254535e07efb034bc800177f2bf2940f53a84b9570bb8006de0e8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:21 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Wed, 11 Jan 2023 17:50:24 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:24 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:24 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:24 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:24 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:24 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:25 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6776a8f4cae0480a11d1e645ef6a75f50fdcf728c449a6c526ff78b75475874c`  
		Last Modified: Wed, 11 Jan 2023 17:53:17 GMT  
		Size: 32.9 MB (32856347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8152bf292e62a09c1501477f974a11e7919cd4d4a5f49e1a949cda67d820a0d1`  
		Last Modified: Wed, 11 Jan 2023 17:53:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8612d318eb4fca42c4c886bbf82be0e006a806e3a995a61730eb48078d815c8a`  
		Last Modified: Wed, 11 Jan 2023 17:53:12 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab7a824cddfe6b08223f2bc5dc1ed9cf67d876df0f3eb6bd1ef85f11fed4812`  
		Last Modified: Wed, 11 Jan 2023 17:53:12 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9-data-alpine`

```console
$ docker pull influxdb@sha256:655cadea047c1146021e421ebe9175502df66343e897722b91e341f5b6091973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:27a546fe7a55069535d05c679bc805db3b4affaec603ad54fa9659c962878397
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37123145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8f0d6966cdc4632a2377a230097d2b3625259923f50cbc8258b6a6da2956f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 16 Dec 2022 00:22:33 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Fri, 16 Dec 2022 00:22:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/etc/influxdb/influxdb.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Dec 2022 00:22:40 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 16 Dec 2022 00:22:40 GMT
EXPOSE 8086
# Fri, 16 Dec 2022 00:22:40 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Dec 2022 00:22:40 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 16 Dec 2022 00:22:40 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Fri, 16 Dec 2022 00:22:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2022 00:22:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d467f271b203363214b4c57ec4bc37f9775f93df69162287ba068cc15e4c8bb`  
		Last Modified: Fri, 16 Dec 2022 00:24:51 GMT  
		Size: 32.8 MB (32812421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f673ffc3ec79e7c63e11213fbac973c119c3e92b48ffd4b492c1d0ce18bfe58`  
		Last Modified: Fri, 16 Dec 2022 00:24:45 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc19480d99cdb683f69ac99b3316a48274773156ddfc6a53702277749a24aba`  
		Last Modified: Fri, 16 Dec 2022 00:24:45 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a511f7e6c07ae78e6db5b768719fc5b468e9fa98ddf1bb26db3261fba06d54`  
		Last Modified: Fri, 16 Dec 2022 00:24:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9-meta`

```console
$ docker pull influxdb@sha256:c95d3cce2215d337de86db9e65d4090836b9bc90fa698b9f7a8f156310146ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:74436cb959868673baef259405ca5e48fcf4bcc875aa7d449e34dee039e00e22
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83488747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea5ae4b57a7d4182fbe62f9befa27bf377c4cd433c412726bf9e2c0a7face20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:21 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Wed, 11 Jan 2023 17:50:30 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:30 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:30 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:30 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:30 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:30 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4024148f9269e3f0271a397463b7603a0bea4d4ba5a865b26e4ee780b3eef9`  
		Last Modified: Wed, 11 Jan 2023 17:53:29 GMT  
		Size: 12.4 MB (12419966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283ed4c8cd211ad3dbf991f7f6cb5ff403d6c19c15c800b8ca1bc3d3c514e06`  
		Last Modified: Wed, 11 Jan 2023 17:53:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab85822d601b1740e951f035581c0fa6e0424a92d357e6b8d8a12e61b20ff45`  
		Last Modified: Wed, 11 Jan 2023 17:53:26 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9-meta-alpine`

```console
$ docker pull influxdb@sha256:01581f6f426315f15fc795b7d39add74445cd4088ab753ba4a7852049fc6123c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:f41d09f5e79a051ba032e03e18538ee005b5cb661b36cfc828c8cbc8b8f32afb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45530fd2894d8b981bef0867b213c39cb177d8cd2bdf9e4e04fdcd68ceea819b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 16 Dec 2022 00:22:33 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Fri, 16 Dec 2022 00:22:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/etc/influxdb/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Dec 2022 00:22:54 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Dec 2022 00:22:54 GMT
EXPOSE 8091
# Fri, 16 Dec 2022 00:22:54 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Dec 2022 00:22:54 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 16 Dec 2022 00:22:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2022 00:22:54 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28187feeb066451be3107428783a9426a129c4632918ab4771fac47a005473d2`  
		Last Modified: Fri, 16 Dec 2022 00:25:11 GMT  
		Size: 12.4 MB (12382062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e813ed160996960a9d2e7a216ec670175998d8b8130898d12fbbb434ab1a487`  
		Last Modified: Fri, 16 Dec 2022 00:25:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea000fb94781b2f19b5e368f2debc78e45965845ce207a35460e15cfea1708`  
		Last Modified: Fri, 16 Dec 2022 00:25:09 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9.8-data`

```console
$ docker pull influxdb@sha256:86bff610321117949255c39f981ccf9a47229179b05a7372e69395d6775a7870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9.8-data` - linux; amd64

```console
$ docker pull influxdb@sha256:3eb84f4fbf47449a487f318da2478afc381887c0e23a15f7669cbe790f0ec287
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dd300c254535e07efb034bc800177f2bf2940f53a84b9570bb8006de0e8f0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:21 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Wed, 11 Jan 2023 17:50:24 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:24 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:24 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:24 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:24 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:24 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:25 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6776a8f4cae0480a11d1e645ef6a75f50fdcf728c449a6c526ff78b75475874c`  
		Last Modified: Wed, 11 Jan 2023 17:53:17 GMT  
		Size: 32.9 MB (32856347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8152bf292e62a09c1501477f974a11e7919cd4d4a5f49e1a949cda67d820a0d1`  
		Last Modified: Wed, 11 Jan 2023 17:53:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8612d318eb4fca42c4c886bbf82be0e006a806e3a995a61730eb48078d815c8a`  
		Last Modified: Wed, 11 Jan 2023 17:53:12 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab7a824cddfe6b08223f2bc5dc1ed9cf67d876df0f3eb6bd1ef85f11fed4812`  
		Last Modified: Wed, 11 Jan 2023 17:53:12 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9.8-data-alpine`

```console
$ docker pull influxdb@sha256:655cadea047c1146021e421ebe9175502df66343e897722b91e341f5b6091973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9.8-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:27a546fe7a55069535d05c679bc805db3b4affaec603ad54fa9659c962878397
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37123145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8f0d6966cdc4632a2377a230097d2b3625259923f50cbc8258b6a6da2956f5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 16 Dec 2022 00:22:33 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Fri, 16 Dec 2022 00:22:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/etc/influxdb/influxdb.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Dec 2022 00:22:40 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 16 Dec 2022 00:22:40 GMT
EXPOSE 8086
# Fri, 16 Dec 2022 00:22:40 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Dec 2022 00:22:40 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 16 Dec 2022 00:22:40 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Fri, 16 Dec 2022 00:22:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2022 00:22:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d467f271b203363214b4c57ec4bc37f9775f93df69162287ba068cc15e4c8bb`  
		Last Modified: Fri, 16 Dec 2022 00:24:51 GMT  
		Size: 32.8 MB (32812421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f673ffc3ec79e7c63e11213fbac973c119c3e92b48ffd4b492c1d0ce18bfe58`  
		Last Modified: Fri, 16 Dec 2022 00:24:45 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc19480d99cdb683f69ac99b3316a48274773156ddfc6a53702277749a24aba`  
		Last Modified: Fri, 16 Dec 2022 00:24:45 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a511f7e6c07ae78e6db5b768719fc5b468e9fa98ddf1bb26db3261fba06d54`  
		Last Modified: Fri, 16 Dec 2022 00:24:46 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9.8-meta`

```console
$ docker pull influxdb@sha256:c95d3cce2215d337de86db9e65d4090836b9bc90fa698b9f7a8f156310146ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9.8-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:74436cb959868673baef259405ca5e48fcf4bcc875aa7d449e34dee039e00e22
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83488747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea5ae4b57a7d4182fbe62f9befa27bf377c4cd433c412726bf9e2c0a7face20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:21 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Wed, 11 Jan 2023 17:50:30 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:30 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:30 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:30 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:30 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:30 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4024148f9269e3f0271a397463b7603a0bea4d4ba5a865b26e4ee780b3eef9`  
		Last Modified: Wed, 11 Jan 2023 17:53:29 GMT  
		Size: 12.4 MB (12419966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f283ed4c8cd211ad3dbf991f7f6cb5ff403d6c19c15c800b8ca1bc3d3c514e06`  
		Last Modified: Wed, 11 Jan 2023 17:53:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab85822d601b1740e951f035581c0fa6e0424a92d357e6b8d8a12e61b20ff45`  
		Last Modified: Wed, 11 Jan 2023 17:53:26 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.9.8-meta-alpine`

```console
$ docker pull influxdb@sha256:01581f6f426315f15fc795b7d39add74445cd4088ab753ba4a7852049fc6123c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:1.9.8-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:f41d09f5e79a051ba032e03e18538ee005b5cb661b36cfc828c8cbc8b8f32afb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45530fd2894d8b981bef0867b213c39cb177d8cd2bdf9e4e04fdcd68ceea819b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 16 Dec 2022 00:22:33 GMT
ENV INFLUXDB_VERSION=1.9.9-c1.9.9
# Fri, 16 Dec 2022 00:22:54 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/etc/influxdb/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Dec 2022 00:22:54 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Dec 2022 00:22:54 GMT
EXPOSE 8091
# Fri, 16 Dec 2022 00:22:54 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Dec 2022 00:22:54 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 16 Dec 2022 00:22:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2022 00:22:54 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28187feeb066451be3107428783a9426a129c4632918ab4771fac47a005473d2`  
		Last Modified: Fri, 16 Dec 2022 00:25:11 GMT  
		Size: 12.4 MB (12382062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e813ed160996960a9d2e7a216ec670175998d8b8130898d12fbbb434ab1a487`  
		Last Modified: Fri, 16 Dec 2022 00:25:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea000fb94781b2f19b5e368f2debc78e45965845ce207a35460e15cfea1708`  
		Last Modified: Fri, 16 Dec 2022 00:25:09 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.4`

```console
$ docker pull influxdb@sha256:3e1aa91e133811eb67a9fc680c3a5b4007a67d8fa6e27d4c452cb1068a1a7055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.4` - linux; amd64

```console
$ docker pull influxdb@sha256:cd8c861c79f3a008947ade97d8ff516486eacca0f311350a055b9452d0e8a323
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261151323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaefac68a3725c75fc318c759e9c93f2b5f6058aff58d0bf7eab4e68ebd7a7a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:50:51 GMT
ENV INFLUXDB_VERSION=2.4.0
# Wed, 11 Jan 2023 17:50:58 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:50:59 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Wed, 11 Jan 2023 17:51:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:02 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:03 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:03 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:03 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:03 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:03 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:03 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:03 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:03 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:04 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06bcf1bdca66efa6f0fb988f4a90f9772c2232fe1cde96345935c18cfb4812`  
		Last Modified: Wed, 11 Jan 2023 17:54:21 GMT  
		Size: 185.8 MB (185802135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a630c2561832147a8773d3f1759a606377f1da04dcc4cc5cdb1d2c89eb941e`  
		Last Modified: Wed, 11 Jan 2023 17:54:08 GMT  
		Size: 6.1 MB (6071051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900675a48292d6f712f729435ec82892967e6f16c4d7013230e4e727938c69f3`  
		Last Modified: Wed, 11 Jan 2023 17:54:07 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c493c89a196b28627b74f5e13c567327c566ebccaf06766e9c6e93305903c0fb`  
		Last Modified: Wed, 11 Jan 2023 17:54:07 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed31ec2a56d8b91e86f3d26f9f2fe8902ee18f63b4e3b4abdab37335d84ab13`  
		Last Modified: Wed, 11 Jan 2023 17:54:07 GMT  
		Size: 5.1 KB (5130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b6e14d04acb1f72a33f88e86b283b7df60f2af5fbdace5d538f2a1ecd42f88eb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255914914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e950d93ddd74a9bb7867ed8bc9ecc7b7c56608237e2380628b0686396f1ca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:04:46 GMT
ENV INFLUXDB_VERSION=2.4.0
# Wed, 11 Jan 2023 18:04:53 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:04:55 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Wed, 11 Jan 2023 18:04:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:04:59 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:04:59 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:04:59 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:00 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:00 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:00 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:00 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:00 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:00 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:00 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85891230f9ba66c7b64da80750cf31290cb1681cf540752b4397fdc23252b0b2`  
		Last Modified: Wed, 11 Jan 2023 18:06:29 GMT  
		Size: 182.4 MB (182445564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3fcbc993aa2a1aae871805cd5531998c996a294f3d17a63b7f9ae5a9ce985`  
		Last Modified: Wed, 11 Jan 2023 18:06:19 GMT  
		Size: 5.6 MB (5600682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67160b6c8d21bfefe4f06fddb4823c5d31c39cd66e605f73e63cbf204a68ddd5`  
		Last Modified: Wed, 11 Jan 2023 18:06:18 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e09e803813466925de8c791778afc73785c1d1886163feabb2630539ae80aea`  
		Last Modified: Wed, 11 Jan 2023 18:06:18 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea091ca6e5088303a8c182c14b6a50881c9be378491f2025e3e603fee1c0b3`  
		Last Modified: Wed, 11 Jan 2023 18:06:18 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.4-alpine`

```console
$ docker pull influxdb@sha256:13938205edd25c78f6450013018c86a4e1fe559a1ad42dbfe2e450c84fc7c1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:75ffbf7f6d7ac8ff0c5cc9a79841171592f12cc8700c06f6d69a4aa328849a18
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204556973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163f83b4e78480834ba7ca1a67f22aecbbe4eda0b5f826e185334d4d00ad13ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 06 Oct 2022 22:42:10 GMT
ENV INFLUXDB_VERSION=2.4.0
# Thu, 06 Oct 2022 22:42:18 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 06 Oct 2022 22:42:19 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Thu, 06 Oct 2022 22:42:22 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 06 Oct 2022 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 06 Oct 2022 22:42:23 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 06 Oct 2022 22:42:23 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 06 Oct 2022 22:42:23 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:42:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:42:23 GMT
CMD ["influxd"]
# Thu, 06 Oct 2022 22:42:23 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:42:23 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 06 Oct 2022 22:42:23 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 06 Oct 2022 22:42:23 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 06 Oct 2022 22:42:24 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3444c163ae388172e02d25763a9b92d1315f19b062f696551ee5f2b443d92a2b`  
		Last Modified: Thu, 06 Oct 2022 22:45:59 GMT  
		Size: 185.8 MB (185802064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204f61998572be91af42495de244b81a1d9a9096d4445fc7f39a540c9d7d5b65`  
		Last Modified: Thu, 06 Oct 2022 22:45:46 GMT  
		Size: 6.1 MB (6071087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1807fc7dfb4a3a92677b8bdcb2c10e30ce2916a94bb17a585afef03b3c47bb82`  
		Last Modified: Thu, 06 Oct 2022 22:45:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed75f252c42d8110db798cf0a4adb1ece010f6f54bb6aacf6a7af2634c04268`  
		Last Modified: Thu, 06 Oct 2022 22:45:45 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f543eefad640e8f36b7ee14b1296d74581c943ea04d2f1649f3a57768ab5ee1`  
		Last Modified: Thu, 06 Oct 2022 22:45:45 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.4-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5b7debfa1302861f167d9c8c337b2cda61b8d3cbf9624e83d037d057de0f9e8d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 MB (200450887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c660638720d949f8c74c2e1eefd8a240578a98310ac2d0652a01aae24b1e50f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 10 Nov 2022 21:47:44 GMT
ENV INFLUXDB_VERSION=2.4.0
# Thu, 10 Nov 2022 21:47:54 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 10 Nov 2022 21:47:56 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Thu, 10 Nov 2022 21:48:00 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 10 Nov 2022 21:48:00 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 10 Nov 2022 21:48:00 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 10 Nov 2022 21:48:01 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 10 Nov 2022 21:48:01 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 10 Nov 2022 21:48:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2022 21:48:01 GMT
CMD ["influxd"]
# Thu, 10 Nov 2022 21:48:01 GMT
EXPOSE 8086
# Thu, 10 Nov 2022 21:48:01 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 10 Nov 2022 21:48:01 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 10 Nov 2022 21:48:01 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 10 Nov 2022 21:48:01 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28beb875b1b32c624d137d1b4f96f156be1617d81c566aa2e9e5b3af14284d7a`  
		Last Modified: Thu, 10 Nov 2022 21:49:14 GMT  
		Size: 182.4 MB (182445564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98925098435f5f063cc7893d1de29b014f21cf260bad0c2a46e3c8338a873812`  
		Last Modified: Thu, 10 Nov 2022 21:49:05 GMT  
		Size: 5.6 MB (5600706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b912876ab2d7e4cff86e572adc9243480b8ec1818662d96ab8bea6f0260b94`  
		Last Modified: Thu, 10 Nov 2022 21:49:04 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbda8e44cfc02a502ec49be530ba1cd9d195d8a7e71d479568eebad4e8fb2cc`  
		Last Modified: Thu, 10 Nov 2022 21:49:04 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a22b72bf86a33b660d7b94830ba4b1ebe0dd5bd92fa804772f2868df81c62c7`  
		Last Modified: Thu, 10 Nov 2022 21:49:04 GMT  
		Size: 5.0 KB (5016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.4.0`

```console
$ docker pull influxdb@sha256:3e1aa91e133811eb67a9fc680c3a5b4007a67d8fa6e27d4c452cb1068a1a7055
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.4.0` - linux; amd64

```console
$ docker pull influxdb@sha256:cd8c861c79f3a008947ade97d8ff516486eacca0f311350a055b9452d0e8a323
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261151323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaefac68a3725c75fc318c759e9c93f2b5f6058aff58d0bf7eab4e68ebd7a7a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:50:51 GMT
ENV INFLUXDB_VERSION=2.4.0
# Wed, 11 Jan 2023 17:50:58 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:50:59 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Wed, 11 Jan 2023 17:51:02 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:02 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:03 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:03 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:03 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:03 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:03 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:03 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:03 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:03 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:04 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b06bcf1bdca66efa6f0fb988f4a90f9772c2232fe1cde96345935c18cfb4812`  
		Last Modified: Wed, 11 Jan 2023 17:54:21 GMT  
		Size: 185.8 MB (185802135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a630c2561832147a8773d3f1759a606377f1da04dcc4cc5cdb1d2c89eb941e`  
		Last Modified: Wed, 11 Jan 2023 17:54:08 GMT  
		Size: 6.1 MB (6071051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900675a48292d6f712f729435ec82892967e6f16c4d7013230e4e727938c69f3`  
		Last Modified: Wed, 11 Jan 2023 17:54:07 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c493c89a196b28627b74f5e13c567327c566ebccaf06766e9c6e93305903c0fb`  
		Last Modified: Wed, 11 Jan 2023 17:54:07 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed31ec2a56d8b91e86f3d26f9f2fe8902ee18f63b4e3b4abdab37335d84ab13`  
		Last Modified: Wed, 11 Jan 2023 17:54:07 GMT  
		Size: 5.1 KB (5130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.4.0` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b6e14d04acb1f72a33f88e86b283b7df60f2af5fbdace5d538f2a1ecd42f88eb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255914914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e950d93ddd74a9bb7867ed8bc9ecc7b7c56608237e2380628b0686396f1ca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:04:46 GMT
ENV INFLUXDB_VERSION=2.4.0
# Wed, 11 Jan 2023 18:04:53 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:04:55 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Wed, 11 Jan 2023 18:04:59 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:04:59 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:04:59 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:04:59 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:00 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:00 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:00 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:00 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:00 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:00 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:00 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85891230f9ba66c7b64da80750cf31290cb1681cf540752b4397fdc23252b0b2`  
		Last Modified: Wed, 11 Jan 2023 18:06:29 GMT  
		Size: 182.4 MB (182445564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3fcbc993aa2a1aae871805cd5531998c996a294f3d17a63b7f9ae5a9ce985`  
		Last Modified: Wed, 11 Jan 2023 18:06:19 GMT  
		Size: 5.6 MB (5600682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67160b6c8d21bfefe4f06fddb4823c5d31c39cd66e605f73e63cbf204a68ddd5`  
		Last Modified: Wed, 11 Jan 2023 18:06:18 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e09e803813466925de8c791778afc73785c1d1886163feabb2630539ae80aea`  
		Last Modified: Wed, 11 Jan 2023 18:06:18 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea091ca6e5088303a8c182c14b6a50881c9be378491f2025e3e603fee1c0b3`  
		Last Modified: Wed, 11 Jan 2023 18:06:18 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.4.0-alpine`

```console
$ docker pull influxdb@sha256:13938205edd25c78f6450013018c86a4e1fe559a1ad42dbfe2e450c84fc7c1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.4.0-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:75ffbf7f6d7ac8ff0c5cc9a79841171592f12cc8700c06f6d69a4aa328849a18
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204556973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163f83b4e78480834ba7ca1a67f22aecbbe4eda0b5f826e185334d4d00ad13ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 06 Oct 2022 22:42:10 GMT
ENV INFLUXDB_VERSION=2.4.0
# Thu, 06 Oct 2022 22:42:18 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 06 Oct 2022 22:42:19 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Thu, 06 Oct 2022 22:42:22 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 06 Oct 2022 22:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 06 Oct 2022 22:42:23 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 06 Oct 2022 22:42:23 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 06 Oct 2022 22:42:23 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:42:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:42:23 GMT
CMD ["influxd"]
# Thu, 06 Oct 2022 22:42:23 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:42:23 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 06 Oct 2022 22:42:23 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 06 Oct 2022 22:42:23 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 06 Oct 2022 22:42:24 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3444c163ae388172e02d25763a9b92d1315f19b062f696551ee5f2b443d92a2b`  
		Last Modified: Thu, 06 Oct 2022 22:45:59 GMT  
		Size: 185.8 MB (185802064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204f61998572be91af42495de244b81a1d9a9096d4445fc7f39a540c9d7d5b65`  
		Last Modified: Thu, 06 Oct 2022 22:45:46 GMT  
		Size: 6.1 MB (6071087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1807fc7dfb4a3a92677b8bdcb2c10e30ce2916a94bb17a585afef03b3c47bb82`  
		Last Modified: Thu, 06 Oct 2022 22:45:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed75f252c42d8110db798cf0a4adb1ece010f6f54bb6aacf6a7af2634c04268`  
		Last Modified: Thu, 06 Oct 2022 22:45:45 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f543eefad640e8f36b7ee14b1296d74581c943ea04d2f1649f3a57768ab5ee1`  
		Last Modified: Thu, 06 Oct 2022 22:45:45 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.4.0-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5b7debfa1302861f167d9c8c337b2cda61b8d3cbf9624e83d037d057de0f9e8d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 MB (200450887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c660638720d949f8c74c2e1eefd8a240578a98310ac2d0652a01aae24b1e50f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 10 Nov 2022 21:47:44 GMT
ENV INFLUXDB_VERSION=2.4.0
# Thu, 10 Nov 2022 21:47:54 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 10 Nov 2022 21:47:56 GMT
ENV INFLUX_CLI_VERSION=2.4.0
# Thu, 10 Nov 2022 21:48:00 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 10 Nov 2022 21:48:00 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 10 Nov 2022 21:48:00 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 10 Nov 2022 21:48:01 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 10 Nov 2022 21:48:01 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 10 Nov 2022 21:48:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2022 21:48:01 GMT
CMD ["influxd"]
# Thu, 10 Nov 2022 21:48:01 GMT
EXPOSE 8086
# Thu, 10 Nov 2022 21:48:01 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 10 Nov 2022 21:48:01 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 10 Nov 2022 21:48:01 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 10 Nov 2022 21:48:01 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28beb875b1b32c624d137d1b4f96f156be1617d81c566aa2e9e5b3af14284d7a`  
		Last Modified: Thu, 10 Nov 2022 21:49:14 GMT  
		Size: 182.4 MB (182445564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98925098435f5f063cc7893d1de29b014f21cf260bad0c2a46e3c8338a873812`  
		Last Modified: Thu, 10 Nov 2022 21:49:05 GMT  
		Size: 5.6 MB (5600706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b912876ab2d7e4cff86e572adc9243480b8ec1818662d96ab8bea6f0260b94`  
		Last Modified: Thu, 10 Nov 2022 21:49:04 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbda8e44cfc02a502ec49be530ba1cd9d195d8a7e71d479568eebad4e8fb2cc`  
		Last Modified: Thu, 10 Nov 2022 21:49:04 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a22b72bf86a33b660d7b94830ba4b1ebe0dd5bd92fa804772f2868df81c62c7`  
		Last Modified: Thu, 10 Nov 2022 21:49:04 GMT  
		Size: 5.0 KB (5016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.5`

```console
$ docker pull influxdb@sha256:f625f1167505b11dec85adf63a586dcbf608d1d25ab5d99d5fc53a6a412184b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.5` - linux; amd64

```console
$ docker pull influxdb@sha256:4cb88d1ecac1d52f5a44a2a55b059950e028f8d379c1ae1536ed8fc05c4d1b3f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169818113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412c4f680dcc9a59035f39fc1976136c759e0a47a9242cd8c37d9e56fed80fa4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:51:08 GMT
ENV INFLUXDB_VERSION=2.5.1
# Wed, 11 Jan 2023 17:51:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:51:14 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Wed, 11 Jan 2023 17:51:17 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:18 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:18 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:18 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:18 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:18 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:18 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:18 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:18 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c685b766199bd270b0194a4e4592706f555b8b7bffacfc795dd8da93d0473457`  
		Last Modified: Wed, 11 Jan 2023 17:54:42 GMT  
		Size: 94.4 MB (94434193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae23478dbb07f0c151f4170583111a21a843c40717ca3164e252ce20fc62cea`  
		Last Modified: Wed, 11 Jan 2023 17:54:31 GMT  
		Size: 6.1 MB (6105784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c443f46d9859e9b985b84aa35a72645b33383f9e22ffc54c8f1a14ca6366ee`  
		Last Modified: Wed, 11 Jan 2023 17:54:30 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d06c937f81222ec498aadb7d0cb8b99918695b0c6beccd212bda0629b8acfe`  
		Last Modified: Wed, 11 Jan 2023 17:54:30 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfbabe6dbde31cd6a4945eeb59aa718b3e794db25c934dbb51a9cca9f7f012c`  
		Last Modified: Wed, 11 Jan 2023 17:54:30 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:83686161cca90f2b559b400e3b25c5fd15faa12151908ba54fc49888de96809f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164548960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0991f0e0e974ce19ba9784e1f64b0e1f69ffb472028f115c6aaec6c09fe435eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:05:07 GMT
ENV INFLUXDB_VERSION=2.5.1
# Wed, 11 Jan 2023 18:05:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:05:15 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Wed, 11 Jan 2023 18:05:19 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:05:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:05:20 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:05:20 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:20 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:20 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:20 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:20 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:20 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:20 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:20 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639eb473dcd2803ae2c04d6d28006110d83338d99f4c3ba6dbd1b99390ce0103`  
		Last Modified: Wed, 11 Jan 2023 18:06:47 GMT  
		Size: 91.0 MB (91048404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4a261a37b1f53cc0b20bd9282ade18f114b1527661ec87cf26819d65c50933`  
		Last Modified: Wed, 11 Jan 2023 18:06:40 GMT  
		Size: 5.6 MB (5631892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5784a6f3b4b8b1396f6277b03fc0188a4be6b5c7b137ef6b41886abd5670965`  
		Last Modified: Wed, 11 Jan 2023 18:06:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585bb41da22d2b397f160a92635bf66cf0d60130990aba31bb89179a93e773f0`  
		Last Modified: Wed, 11 Jan 2023 18:06:39 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bad32c3bdd44fdfc1dbc1346343cd3ee023c6259f1a048ee3651a0f4e5a426`  
		Last Modified: Wed, 11 Jan 2023 18:06:39 GMT  
		Size: 5.1 KB (5130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.5-alpine`

```console
$ docker pull influxdb@sha256:0cde017d9bc2e77fbb3cdc258cfdaebc2059e8aca8edac61c2f4a290a3a3bc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:98444f55506bfce0cdaae99b0b3b99832406b5e528b0e783011b3b632bba5c06
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113223812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfeaeb516d50a7f06be060b416648e82117cce88c9526a31f892db9d6bbe140`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 03 Nov 2022 18:20:45 GMT
ENV INFLUXDB_VERSION=2.5.1
# Thu, 03 Nov 2022 18:20:51 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 03 Nov 2022 18:20:52 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Thu, 03 Nov 2022 18:20:55 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 03 Nov 2022 18:20:55 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 03 Nov 2022 18:20:55 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 03 Nov 2022 18:20:56 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 03 Nov 2022 18:20:56 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 03 Nov 2022 18:20:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2022 18:20:56 GMT
CMD ["influxd"]
# Thu, 03 Nov 2022 18:20:56 GMT
EXPOSE 8086
# Thu, 03 Nov 2022 18:20:56 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 03 Nov 2022 18:20:56 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 03 Nov 2022 18:20:57 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 03 Nov 2022 18:20:57 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ce778603d20c1dd4c00d95da112dc1bc7f1e716db74371d67c7f73c6180013`  
		Last Modified: Thu, 03 Nov 2022 18:22:44 GMT  
		Size: 94.4 MB (94434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236a91e8c3df14e1a3247b21fd414d82f9e93295b9617333c27299bc1919e3d`  
		Last Modified: Thu, 03 Nov 2022 18:22:33 GMT  
		Size: 6.1 MB (6105798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccca15e7be208ada72168e7909d215bcf8c7dde8c61fff7aafa8821f744bf13`  
		Last Modified: Thu, 03 Nov 2022 18:22:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1729dd46a82eb3433b20e826a6d550b744e28becba678ccbd482a642be8b56b8`  
		Last Modified: Thu, 03 Nov 2022 18:22:32 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92e991061f4c3cd206501e99c54acf40e3981716a0dabec4493f2c29286f786`  
		Last Modified: Thu, 03 Nov 2022 18:22:32 GMT  
		Size: 5.0 KB (5015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.5-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:663a897c5b410ce0b7f965dc12c68db15787da25dd0415257c0d87cd5f1ef704
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109084891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14761fd3500b0fcd3de5fddf6cce53cfd2da91f1090643a18462f6a5fe678d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 10 Nov 2022 21:48:05 GMT
ENV INFLUXDB_VERSION=2.5.1
# Thu, 10 Nov 2022 21:48:12 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 10 Nov 2022 21:48:13 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Thu, 10 Nov 2022 21:48:17 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 10 Nov 2022 21:48:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 10 Nov 2022 21:48:18 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 10 Nov 2022 21:48:18 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 10 Nov 2022 21:48:18 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 10 Nov 2022 21:48:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2022 21:48:18 GMT
CMD ["influxd"]
# Thu, 10 Nov 2022 21:48:18 GMT
EXPOSE 8086
# Thu, 10 Nov 2022 21:48:18 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 10 Nov 2022 21:48:18 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 10 Nov 2022 21:48:18 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 10 Nov 2022 21:48:18 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dd5a56b340feceb036c8a2a31285cd0d9d89a53df1d0a6e5777219d1987fb4`  
		Last Modified: Thu, 10 Nov 2022 21:49:32 GMT  
		Size: 91.0 MB (91048366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ced6843bd469064f133fa1d7415d30e28107787aca3786493c1a1b64b1f757`  
		Last Modified: Thu, 10 Nov 2022 21:49:26 GMT  
		Size: 5.6 MB (5631906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcab12af0749e1ca6c41ac9ef038b9abd85d5d12f7a1fded17f8925084ee68d2`  
		Last Modified: Thu, 10 Nov 2022 21:49:25 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995f3f7a9e107eea0d51e2e1e5f519b66091608b3fdc41ac159af3b135a296f1`  
		Last Modified: Thu, 10 Nov 2022 21:49:25 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae572fd8197d4375e9cc62e31ee9400a1afce79b8d53d285bb8354318d3e684c`  
		Last Modified: Thu, 10 Nov 2022 21:49:25 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.5.1`

```console
$ docker pull influxdb@sha256:f625f1167505b11dec85adf63a586dcbf608d1d25ab5d99d5fc53a6a412184b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.5.1` - linux; amd64

```console
$ docker pull influxdb@sha256:4cb88d1ecac1d52f5a44a2a55b059950e028f8d379c1ae1536ed8fc05c4d1b3f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169818113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412c4f680dcc9a59035f39fc1976136c759e0a47a9242cd8c37d9e56fed80fa4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:51:08 GMT
ENV INFLUXDB_VERSION=2.5.1
# Wed, 11 Jan 2023 17:51:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:51:14 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Wed, 11 Jan 2023 17:51:17 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:18 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:18 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:18 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:18 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:18 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:18 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:18 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:18 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c685b766199bd270b0194a4e4592706f555b8b7bffacfc795dd8da93d0473457`  
		Last Modified: Wed, 11 Jan 2023 17:54:42 GMT  
		Size: 94.4 MB (94434193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae23478dbb07f0c151f4170583111a21a843c40717ca3164e252ce20fc62cea`  
		Last Modified: Wed, 11 Jan 2023 17:54:31 GMT  
		Size: 6.1 MB (6105784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c443f46d9859e9b985b84aa35a72645b33383f9e22ffc54c8f1a14ca6366ee`  
		Last Modified: Wed, 11 Jan 2023 17:54:30 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d06c937f81222ec498aadb7d0cb8b99918695b0c6beccd212bda0629b8acfe`  
		Last Modified: Wed, 11 Jan 2023 17:54:30 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfbabe6dbde31cd6a4945eeb59aa718b3e794db25c934dbb51a9cca9f7f012c`  
		Last Modified: Wed, 11 Jan 2023 17:54:30 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.5.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:83686161cca90f2b559b400e3b25c5fd15faa12151908ba54fc49888de96809f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164548960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0991f0e0e974ce19ba9784e1f64b0e1f69ffb472028f115c6aaec6c09fe435eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:05:07 GMT
ENV INFLUXDB_VERSION=2.5.1
# Wed, 11 Jan 2023 18:05:14 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:05:15 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Wed, 11 Jan 2023 18:05:19 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:05:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:05:20 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:05:20 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:20 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:20 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:20 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:20 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:20 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:20 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:20 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639eb473dcd2803ae2c04d6d28006110d83338d99f4c3ba6dbd1b99390ce0103`  
		Last Modified: Wed, 11 Jan 2023 18:06:47 GMT  
		Size: 91.0 MB (91048404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4a261a37b1f53cc0b20bd9282ade18f114b1527661ec87cf26819d65c50933`  
		Last Modified: Wed, 11 Jan 2023 18:06:40 GMT  
		Size: 5.6 MB (5631892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5784a6f3b4b8b1396f6277b03fc0188a4be6b5c7b137ef6b41886abd5670965`  
		Last Modified: Wed, 11 Jan 2023 18:06:39 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585bb41da22d2b397f160a92635bf66cf0d60130990aba31bb89179a93e773f0`  
		Last Modified: Wed, 11 Jan 2023 18:06:39 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bad32c3bdd44fdfc1dbc1346343cd3ee023c6259f1a048ee3651a0f4e5a426`  
		Last Modified: Wed, 11 Jan 2023 18:06:39 GMT  
		Size: 5.1 KB (5130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.5.1-alpine`

```console
$ docker pull influxdb@sha256:0cde017d9bc2e77fbb3cdc258cfdaebc2059e8aca8edac61c2f4a290a3a3bc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.5.1-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:98444f55506bfce0cdaae99b0b3b99832406b5e528b0e783011b3b632bba5c06
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113223812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfeaeb516d50a7f06be060b416648e82117cce88c9526a31f892db9d6bbe140`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 03 Nov 2022 18:20:45 GMT
ENV INFLUXDB_VERSION=2.5.1
# Thu, 03 Nov 2022 18:20:51 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 03 Nov 2022 18:20:52 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Thu, 03 Nov 2022 18:20:55 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 03 Nov 2022 18:20:55 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 03 Nov 2022 18:20:55 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 03 Nov 2022 18:20:56 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 03 Nov 2022 18:20:56 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 03 Nov 2022 18:20:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2022 18:20:56 GMT
CMD ["influxd"]
# Thu, 03 Nov 2022 18:20:56 GMT
EXPOSE 8086
# Thu, 03 Nov 2022 18:20:56 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 03 Nov 2022 18:20:56 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 03 Nov 2022 18:20:57 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 03 Nov 2022 18:20:57 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ce778603d20c1dd4c00d95da112dc1bc7f1e716db74371d67c7f73c6180013`  
		Last Modified: Thu, 03 Nov 2022 18:22:44 GMT  
		Size: 94.4 MB (94434194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236a91e8c3df14e1a3247b21fd414d82f9e93295b9617333c27299bc1919e3d`  
		Last Modified: Thu, 03 Nov 2022 18:22:33 GMT  
		Size: 6.1 MB (6105798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccca15e7be208ada72168e7909d215bcf8c7dde8c61fff7aafa8821f744bf13`  
		Last Modified: Thu, 03 Nov 2022 18:22:32 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1729dd46a82eb3433b20e826a6d550b744e28becba678ccbd482a642be8b56b8`  
		Last Modified: Thu, 03 Nov 2022 18:22:32 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92e991061f4c3cd206501e99c54acf40e3981716a0dabec4493f2c29286f786`  
		Last Modified: Thu, 03 Nov 2022 18:22:32 GMT  
		Size: 5.0 KB (5015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.5.1-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:663a897c5b410ce0b7f965dc12c68db15787da25dd0415257c0d87cd5f1ef704
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109084891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14761fd3500b0fcd3de5fddf6cce53cfd2da91f1090643a18462f6a5fe678d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Thu, 10 Nov 2022 21:48:05 GMT
ENV INFLUXDB_VERSION=2.5.1
# Thu, 10 Nov 2022 21:48:12 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Thu, 10 Nov 2022 21:48:13 GMT
ENV INFLUX_CLI_VERSION=2.5.0
# Thu, 10 Nov 2022 21:48:17 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Thu, 10 Nov 2022 21:48:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Thu, 10 Nov 2022 21:48:18 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 10 Nov 2022 21:48:18 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Thu, 10 Nov 2022 21:48:18 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Thu, 10 Nov 2022 21:48:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2022 21:48:18 GMT
CMD ["influxd"]
# Thu, 10 Nov 2022 21:48:18 GMT
EXPOSE 8086
# Thu, 10 Nov 2022 21:48:18 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 10 Nov 2022 21:48:18 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 10 Nov 2022 21:48:18 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 10 Nov 2022 21:48:18 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dd5a56b340feceb036c8a2a31285cd0d9d89a53df1d0a6e5777219d1987fb4`  
		Last Modified: Thu, 10 Nov 2022 21:49:32 GMT  
		Size: 91.0 MB (91048366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ced6843bd469064f133fa1d7415d30e28107787aca3786493c1a1b64b1f757`  
		Last Modified: Thu, 10 Nov 2022 21:49:26 GMT  
		Size: 5.6 MB (5631906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcab12af0749e1ca6c41ac9ef038b9abd85d5d12f7a1fded17f8925084ee68d2`  
		Last Modified: Thu, 10 Nov 2022 21:49:25 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995f3f7a9e107eea0d51e2e1e5f519b66091608b3fdc41ac159af3b135a296f1`  
		Last Modified: Thu, 10 Nov 2022 21:49:25 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae572fd8197d4375e9cc62e31ee9400a1afce79b8d53d285bb8354318d3e684c`  
		Last Modified: Thu, 10 Nov 2022 21:49:25 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.6`

```console
$ docker pull influxdb@sha256:51e3ae653b9d077079427aebc9fdd122cf5691679409737f83df6f2dc0853b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.6` - linux; amd64

```console
$ docker pull influxdb@sha256:5abfe034ac6891fd8cdcd0df9978a4a0261afb2d73c1e5aec3522173c238215e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169188513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4af8075f1dfbd35acd95916b59a5b38313415f9974e2649ea7c7cb243a8b50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:51:24 GMT
ENV INFLUXDB_VERSION=2.6.1
# Wed, 11 Jan 2023 17:51:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:51:29 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Wed, 11 Jan 2023 17:51:32 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:33 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:33 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:33 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:33 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:33 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:33 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:33 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:34 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:34 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdae51f5affc73a6549fc4c6e4e80303e85cafc843ab07965aa79fc61d86de2`  
		Last Modified: Wed, 11 Jan 2023 17:55:02 GMT  
		Size: 93.7 MB (93699451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81926b710fc45102c4fd22f718845aa25abd62a1677f0beae8fe824dbfa2e49b`  
		Last Modified: Wed, 11 Jan 2023 17:54:52 GMT  
		Size: 6.2 MB (6210925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75f549d66d8fd9e4773016007add2e4171c0f6bf532e3525c3ac4407db2a4b7`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c9bf5ace6f75dba7e8e165d87c9d74cda203919adb4ff9b6e2719fc73fe75b`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dce1f756a322d61f554bfde2e704a69f33a8dc70420f7bb3f97f233bf91aba`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:27a4c23533d8cecd0c3f9067a91bd3b83e00dde7616e8bee5fd833c5a92321fd
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163857926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dc4d804599a40aef9ba5cb4243f32efa69d01fbea5789ee18b56f40961136b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:05:24 GMT
ENV INFLUXDB_VERSION=2.6.1
# Wed, 11 Jan 2023 18:05:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:05:30 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Wed, 11 Jan 2023 18:05:38 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:05:39 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:05:39 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:05:39 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:39 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:39 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:39 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e646997fdf38145df960e14349b3ddd2518274cf669c18ee5245564ab5f8e5e`  
		Last Modified: Wed, 11 Jan 2023 18:07:04 GMT  
		Size: 90.3 MB (90285213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c14798514de56be20ee00a8ad0dd44ac5adb656eaec9d8c3d54fa7cd4f12e`  
		Last Modified: Wed, 11 Jan 2023 18:06:57 GMT  
		Size: 5.7 MB (5704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aafe275a253229c64327f44c39a34bdfaa8946af43d53a6bd314c54cde6bc1b`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1359569ec8a42c9fd8a59f3eeb91e175acc9c826da12431affcd7a669b659ef`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4730982b0903caa866691660687cdc90ad506dd178d4980391959dc022bc2dd3`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 5.1 KB (5129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.6-alpine`

```console
$ docker pull influxdb@sha256:8023563cb2863924cfeef108edb8e206143880e1d75a695448a2ead052200cf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:96924588bb357c52c54eb709046ad751b4b690b31b82e8b9663ae52af20b75e8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112594245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc252d1c8ae5df7046054bcac84c169b7083fe3cb49fae14e61708ff2830c698`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Fri, 30 Dec 2022 17:20:42 GMT
ENV INFLUXDB_VERSION=2.6.1
# Fri, 30 Dec 2022 17:20:48 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Fri, 30 Dec 2022 17:20:48 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Fri, 30 Dec 2022 17:20:51 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Fri, 30 Dec 2022 17:20:52 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Fri, 30 Dec 2022 17:20:52 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Fri, 30 Dec 2022 17:20:52 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Fri, 30 Dec 2022 17:20:52 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Fri, 30 Dec 2022 17:20:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Dec 2022 17:20:52 GMT
CMD ["influxd"]
# Fri, 30 Dec 2022 17:20:52 GMT
EXPOSE 8086
# Fri, 30 Dec 2022 17:20:52 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Fri, 30 Dec 2022 17:20:52 GMT
ENV INFLUXD_INIT_PORT=9999
# Fri, 30 Dec 2022 17:20:53 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Fri, 30 Dec 2022 17:20:53 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2b2ea18acd295468e138611402dc50cd04460343fd32d0a91b39b3e495ed1`  
		Last Modified: Fri, 30 Dec 2022 17:22:33 GMT  
		Size: 93.7 MB (93699465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260b79e93c0e4202e3b11e2e04defa22c23a441ade05e12ac750517218049f86`  
		Last Modified: Fri, 30 Dec 2022 17:22:24 GMT  
		Size: 6.2 MB (6210956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1f535a7a03fac91a2537b31f85635567677d03450d4e19e528e42f1639c97f`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b1ac928fd1704d706b83fb57a7a46a42de2b16edd079361d2afdcec6d2096`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085e88d57586b784148bd184b72b27c01d71bed768766f6b3dec381e5615c997`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 5.0 KB (5019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.6-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:bec7ba8200ba43539cbeac0b3bea8f3b4e1f3d1c1fe838f081e9c9ef7b9ac418
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108393937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712384034846693d21a14ac152ca1fa2613a33ee498c77cc18b5e16c250f526a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Fri, 30 Dec 2022 17:39:57 GMT
ENV INFLUXDB_VERSION=2.6.1
# Fri, 30 Dec 2022 17:40:02 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Fri, 30 Dec 2022 17:40:04 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Fri, 30 Dec 2022 17:40:06 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Fri, 30 Dec 2022 17:40:07 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Fri, 30 Dec 2022 17:40:07 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Fri, 30 Dec 2022 17:40:07 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Fri, 30 Dec 2022 17:40:07 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Fri, 30 Dec 2022 17:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Dec 2022 17:40:07 GMT
CMD ["influxd"]
# Fri, 30 Dec 2022 17:40:07 GMT
EXPOSE 8086
# Fri, 30 Dec 2022 17:40:07 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Fri, 30 Dec 2022 17:40:08 GMT
ENV INFLUXD_INIT_PORT=9999
# Fri, 30 Dec 2022 17:40:08 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Fri, 30 Dec 2022 17:40:08 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e366447ed73a758cf137f81f3ec852a19b4a5a6f4dcc3fe74034aa9f02bd2e00`  
		Last Modified: Fri, 30 Dec 2022 17:41:01 GMT  
		Size: 90.3 MB (90285254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b487cf60f9ff0989d9a5725bfab085d8d46831f11adf15881350d97d45673`  
		Last Modified: Fri, 30 Dec 2022 17:40:54 GMT  
		Size: 5.7 MB (5704065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763dbb57efaccf81ed8ed405819de2b6ab6fe930ab699509250b52bcedaf9e51`  
		Last Modified: Fri, 30 Dec 2022 17:40:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b8372a490b9f816dc208293c1558b37f2a787b503a485cb2702c5388c0ca5`  
		Last Modified: Fri, 30 Dec 2022 17:40:54 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9a1298d2af7bf0f26a5794a5ae4d143ee5912c8e9d0434406bdaa5279092a`  
		Last Modified: Fri, 30 Dec 2022 17:40:53 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.6.1`

```console
$ docker pull influxdb@sha256:51e3ae653b9d077079427aebc9fdd122cf5691679409737f83df6f2dc0853b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.6.1` - linux; amd64

```console
$ docker pull influxdb@sha256:5abfe034ac6891fd8cdcd0df9978a4a0261afb2d73c1e5aec3522173c238215e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169188513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4af8075f1dfbd35acd95916b59a5b38313415f9974e2649ea7c7cb243a8b50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:51:24 GMT
ENV INFLUXDB_VERSION=2.6.1
# Wed, 11 Jan 2023 17:51:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:51:29 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Wed, 11 Jan 2023 17:51:32 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:33 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:33 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:33 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:33 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:33 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:33 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:33 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:34 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:34 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdae51f5affc73a6549fc4c6e4e80303e85cafc843ab07965aa79fc61d86de2`  
		Last Modified: Wed, 11 Jan 2023 17:55:02 GMT  
		Size: 93.7 MB (93699451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81926b710fc45102c4fd22f718845aa25abd62a1677f0beae8fe824dbfa2e49b`  
		Last Modified: Wed, 11 Jan 2023 17:54:52 GMT  
		Size: 6.2 MB (6210925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75f549d66d8fd9e4773016007add2e4171c0f6bf532e3525c3ac4407db2a4b7`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c9bf5ace6f75dba7e8e165d87c9d74cda203919adb4ff9b6e2719fc73fe75b`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dce1f756a322d61f554bfde2e704a69f33a8dc70420f7bb3f97f233bf91aba`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.6.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:27a4c23533d8cecd0c3f9067a91bd3b83e00dde7616e8bee5fd833c5a92321fd
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163857926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dc4d804599a40aef9ba5cb4243f32efa69d01fbea5789ee18b56f40961136b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:05:24 GMT
ENV INFLUXDB_VERSION=2.6.1
# Wed, 11 Jan 2023 18:05:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:05:30 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Wed, 11 Jan 2023 18:05:38 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:05:39 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:05:39 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:05:39 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:39 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:39 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:39 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e646997fdf38145df960e14349b3ddd2518274cf669c18ee5245564ab5f8e5e`  
		Last Modified: Wed, 11 Jan 2023 18:07:04 GMT  
		Size: 90.3 MB (90285213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c14798514de56be20ee00a8ad0dd44ac5adb656eaec9d8c3d54fa7cd4f12e`  
		Last Modified: Wed, 11 Jan 2023 18:06:57 GMT  
		Size: 5.7 MB (5704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aafe275a253229c64327f44c39a34bdfaa8946af43d53a6bd314c54cde6bc1b`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1359569ec8a42c9fd8a59f3eeb91e175acc9c826da12431affcd7a669b659ef`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4730982b0903caa866691660687cdc90ad506dd178d4980391959dc022bc2dd3`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 5.1 KB (5129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:2.6.1-alpine`

```console
$ docker pull influxdb@sha256:8023563cb2863924cfeef108edb8e206143880e1d75a695448a2ead052200cf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:2.6.1-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:96924588bb357c52c54eb709046ad751b4b690b31b82e8b9663ae52af20b75e8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112594245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc252d1c8ae5df7046054bcac84c169b7083fe3cb49fae14e61708ff2830c698`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Fri, 30 Dec 2022 17:20:42 GMT
ENV INFLUXDB_VERSION=2.6.1
# Fri, 30 Dec 2022 17:20:48 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Fri, 30 Dec 2022 17:20:48 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Fri, 30 Dec 2022 17:20:51 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Fri, 30 Dec 2022 17:20:52 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Fri, 30 Dec 2022 17:20:52 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Fri, 30 Dec 2022 17:20:52 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Fri, 30 Dec 2022 17:20:52 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Fri, 30 Dec 2022 17:20:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Dec 2022 17:20:52 GMT
CMD ["influxd"]
# Fri, 30 Dec 2022 17:20:52 GMT
EXPOSE 8086
# Fri, 30 Dec 2022 17:20:52 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Fri, 30 Dec 2022 17:20:52 GMT
ENV INFLUXD_INIT_PORT=9999
# Fri, 30 Dec 2022 17:20:53 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Fri, 30 Dec 2022 17:20:53 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2b2ea18acd295468e138611402dc50cd04460343fd32d0a91b39b3e495ed1`  
		Last Modified: Fri, 30 Dec 2022 17:22:33 GMT  
		Size: 93.7 MB (93699465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260b79e93c0e4202e3b11e2e04defa22c23a441ade05e12ac750517218049f86`  
		Last Modified: Fri, 30 Dec 2022 17:22:24 GMT  
		Size: 6.2 MB (6210956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1f535a7a03fac91a2537b31f85635567677d03450d4e19e528e42f1639c97f`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b1ac928fd1704d706b83fb57a7a46a42de2b16edd079361d2afdcec6d2096`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085e88d57586b784148bd184b72b27c01d71bed768766f6b3dec381e5615c997`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 5.0 KB (5019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:2.6.1-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:bec7ba8200ba43539cbeac0b3bea8f3b4e1f3d1c1fe838f081e9c9ef7b9ac418
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108393937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712384034846693d21a14ac152ca1fa2613a33ee498c77cc18b5e16c250f526a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Fri, 30 Dec 2022 17:39:57 GMT
ENV INFLUXDB_VERSION=2.6.1
# Fri, 30 Dec 2022 17:40:02 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Fri, 30 Dec 2022 17:40:04 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Fri, 30 Dec 2022 17:40:06 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Fri, 30 Dec 2022 17:40:07 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Fri, 30 Dec 2022 17:40:07 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Fri, 30 Dec 2022 17:40:07 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Fri, 30 Dec 2022 17:40:07 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Fri, 30 Dec 2022 17:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Dec 2022 17:40:07 GMT
CMD ["influxd"]
# Fri, 30 Dec 2022 17:40:07 GMT
EXPOSE 8086
# Fri, 30 Dec 2022 17:40:07 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Fri, 30 Dec 2022 17:40:08 GMT
ENV INFLUXD_INIT_PORT=9999
# Fri, 30 Dec 2022 17:40:08 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Fri, 30 Dec 2022 17:40:08 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e366447ed73a758cf137f81f3ec852a19b4a5a6f4dcc3fe74034aa9f02bd2e00`  
		Last Modified: Fri, 30 Dec 2022 17:41:01 GMT  
		Size: 90.3 MB (90285254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b487cf60f9ff0989d9a5725bfab085d8d46831f11adf15881350d97d45673`  
		Last Modified: Fri, 30 Dec 2022 17:40:54 GMT  
		Size: 5.7 MB (5704065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763dbb57efaccf81ed8ed405819de2b6ab6fe930ab699509250b52bcedaf9e51`  
		Last Modified: Fri, 30 Dec 2022 17:40:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b8372a490b9f816dc208293c1558b37f2a787b503a485cb2702c5388c0ca5`  
		Last Modified: Fri, 30 Dec 2022 17:40:54 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9a1298d2af7bf0f26a5794a5ae4d143ee5912c8e9d0434406bdaa5279092a`  
		Last Modified: Fri, 30 Dec 2022 17:40:53 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:8023563cb2863924cfeef108edb8e206143880e1d75a695448a2ead052200cf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:96924588bb357c52c54eb709046ad751b4b690b31b82e8b9663ae52af20b75e8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112594245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc252d1c8ae5df7046054bcac84c169b7083fe3cb49fae14e61708ff2830c698`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:41:28 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 06 Oct 2022 22:41:29 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Fri, 30 Dec 2022 17:20:42 GMT
ENV INFLUXDB_VERSION=2.6.1
# Fri, 30 Dec 2022 17:20:48 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Fri, 30 Dec 2022 17:20:48 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Fri, 30 Dec 2022 17:20:51 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Fri, 30 Dec 2022 17:20:52 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Fri, 30 Dec 2022 17:20:52 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Fri, 30 Dec 2022 17:20:52 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Fri, 30 Dec 2022 17:20:52 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Fri, 30 Dec 2022 17:20:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Dec 2022 17:20:52 GMT
CMD ["influxd"]
# Fri, 30 Dec 2022 17:20:52 GMT
EXPOSE 8086
# Fri, 30 Dec 2022 17:20:52 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Fri, 30 Dec 2022 17:20:52 GMT
ENV INFLUXD_INIT_PORT=9999
# Fri, 30 Dec 2022 17:20:53 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Fri, 30 Dec 2022 17:20:53 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46acce005ff6ed730110484cb17e875a1911ffa2be93390133229983acda92ae`  
		Last Modified: Thu, 06 Oct 2022 22:45:07 GMT  
		Size: 9.8 MB (9849353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d46d699caad9f4c3d02e96eb23fe812a5fe94e056d9d00855e190bc4d259fd`  
		Last Modified: Thu, 06 Oct 2022 22:45:05 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2b2ea18acd295468e138611402dc50cd04460343fd32d0a91b39b3e495ed1`  
		Last Modified: Fri, 30 Dec 2022 17:22:33 GMT  
		Size: 93.7 MB (93699465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260b79e93c0e4202e3b11e2e04defa22c23a441ade05e12ac750517218049f86`  
		Last Modified: Fri, 30 Dec 2022 17:22:24 GMT  
		Size: 6.2 MB (6210956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1f535a7a03fac91a2537b31f85635567677d03450d4e19e528e42f1639c97f`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b1ac928fd1704d706b83fb57a7a46a42de2b16edd079361d2afdcec6d2096`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085e88d57586b784148bd184b72b27c01d71bed768766f6b3dec381e5615c997`  
		Last Modified: Fri, 30 Dec 2022 17:22:23 GMT  
		Size: 5.0 KB (5019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:bec7ba8200ba43539cbeac0b3bea8f3b4e1f3d1c1fe838f081e9c9ef7b9ac418
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108393937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712384034846693d21a14ac152ca1fa2613a33ee498c77cc18b5e16c250f526a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:51 GMT
ADD file:b312c8f512719efd09811d17c2b250bbad03cf3f90c135a00695cc8e152f4ee2 in / 
# Thu, 10 Nov 2022 20:39:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:47:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Nov 2022 21:47:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates gnupg run-parts su-exec &&     update-ca-certificates
# Thu, 10 Nov 2022 21:47:22 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Fri, 30 Dec 2022 17:39:57 GMT
ENV INFLUXDB_VERSION=2.6.1
# Fri, 30 Dec 2022 17:40:02 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Fri, 30 Dec 2022 17:40:04 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Fri, 30 Dec 2022 17:40:06 GMT
RUN set -eux &&     ARCH="$(apk --print-arch)" &&     if [ ${ARCH} = x86_64 ]; then         ARCH=amd64;     elif [ ${ARCH} = aarch64 ]; then         ARCH=arm64;     else         echo "Unsupported architecture: ${ARCH}" && exit 1;     fi &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Fri, 30 Dec 2022 17:40:07 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Fri, 30 Dec 2022 17:40:07 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Fri, 30 Dec 2022 17:40:07 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Fri, 30 Dec 2022 17:40:07 GMT
COPY file:a6a402694185d5f58fa629116844ddbbc1c391c2cafad4c8077c27ee45de05a8 in /entrypoint.sh 
# Fri, 30 Dec 2022 17:40:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Dec 2022 17:40:07 GMT
CMD ["influxd"]
# Fri, 30 Dec 2022 17:40:07 GMT
EXPOSE 8086
# Fri, 30 Dec 2022 17:40:07 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Fri, 30 Dec 2022 17:40:08 GMT
ENV INFLUXD_INIT_PORT=9999
# Fri, 30 Dec 2022 17:40:08 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Fri, 30 Dec 2022 17:40:08 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:90cda3b7c32511829cd5ae9074240c36c34507085acb6e55b96f993740d2be93`  
		Last Modified: Tue, 09 Aug 2022 17:41:06 GMT  
		Size: 2.7 MB (2722153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dfdc2937073725a58668c13be29b74424cf00be3343640f2a18d1d635615b7`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af93c77cab7bd0584810da0a49358603ff93f64ca58734dc4bb8bdaa864ab92`  
		Last Modified: Thu, 10 Nov 2022 21:48:46 GMT  
		Size: 9.7 MB (9675488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df95e7c08d5f4b61b31e8ce0b013a6f0be89098373306dcac7dfcd5034e73a7d`  
		Last Modified: Thu, 10 Nov 2022 21:48:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e366447ed73a758cf137f81f3ec852a19b4a5a6f4dcc3fe74034aa9f02bd2e00`  
		Last Modified: Fri, 30 Dec 2022 17:41:01 GMT  
		Size: 90.3 MB (90285254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b487cf60f9ff0989d9a5725bfab085d8d46831f11adf15881350d97d45673`  
		Last Modified: Fri, 30 Dec 2022 17:40:54 GMT  
		Size: 5.7 MB (5704065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763dbb57efaccf81ed8ed405819de2b6ab6fe930ab699509250b52bcedaf9e51`  
		Last Modified: Fri, 30 Dec 2022 17:40:53 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b8372a490b9f816dc208293c1558b37f2a787b503a485cb2702c5388c0ca5`  
		Last Modified: Fri, 30 Dec 2022 17:40:54 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9a1298d2af7bf0f26a5794a5ae4d143ee5912c8e9d0434406bdaa5279092a`  
		Last Modified: Fri, 30 Dec 2022 17:40:53 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:342ba309f765d854f5f2407811e6155d838505cbf7f58da2e997dd8d9c087da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:cf0c86f40cbb9c24fcf5ce8072d9c48a08e7ce3e89cfa2c6b744bd4e9fd1812c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127775093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc9dcdac4fcc0b58c4239ee84442fba9392e5dd730b25bb64a89d2479d06c76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:06 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Wed, 11 Jan 2023 17:50:09 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 11 Jan 2023 17:50:10 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:50:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:10 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Wed, 11 Jan 2023 17:50:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1331ac8c6b20fc1d7c5e1043da66fa03909bbdfa04314dfcdbb4dbae178cc0`  
		Last Modified: Wed, 11 Jan 2023 17:52:45 GMT  
		Size: 56.7 MB (56705106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896c6ef7f98d7453f7f79355cf20f71be47c16556621bd09eaf48999b376be5`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f5e78cf88479c0c9cdf033b45410ed9bbf2935111072c3a1c4f913ba515d6c`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13553d06afcf9308c4ef8899bf8b25a1fcb8d62c097a23c2cce374ed96406c2b`  
		Last Modified: Wed, 11 Jan 2023 17:52:37 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:7bd3639a58705b4e8a844d0031ae348220ce36add6e4cd06de72f2ecf550cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7c75c37bc1a924e38c6c1dfd32bc06529ae837a70f8eac0c9d20a6b4b9ad2c3d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60814393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf835835b494592c58fe798cbd65be7f2098c2c7c2832d08bae5e48326fb2c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:20 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Thu, 06 Oct 2022 22:40:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:29 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 06 Oct 2022 22:40:29 GMT
EXPOSE 8086
# Thu, 06 Oct 2022 22:40:30 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:30 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:30 GMT
COPY file:e7af69cde81ffb6eddc175488941183d1244772c36c27b74751d54389fb71701 in /init-influxdb.sh 
# Thu, 06 Oct 2022 22:40:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce3f09ef3045575d0c8013e9b79575368b4854f9f960ca8ebf623845bc7c4bc`  
		Last Modified: Thu, 06 Oct 2022 22:43:38 GMT  
		Size: 56.5 MB (56503668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ce550ab9d131d604789b351c758fbcb49c943245aca7e308df39b5699692a`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66220e5ba00d4c40fa7c1f459663fa010dd302ffb46b3470cc651e35f9223d19`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c327b9a7fb58412fa6ce33a8a8a5fb8d558c4d63454fd1b354a8e08977057b9`  
		Last Modified: Thu, 06 Oct 2022 22:43:30 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:51e3ae653b9d077079427aebc9fdd122cf5691679409737f83df6f2dc0853b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:5abfe034ac6891fd8cdcd0df9978a4a0261afb2d73c1e5aec3522173c238215e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169188513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4af8075f1dfbd35acd95916b59a5b38313415f9974e2649ea7c7cb243a8b50`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:54 GMT
ADD file:4bf66d4081da52e8b692fcff96aad84d3e68bda4f62e870e8f4803153c70e24c in / 
# Wed, 11 Jan 2023 02:34:55 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:05:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:05:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:50:48 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 17:50:48 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 17:50:51 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 17:51:24 GMT
ENV INFLUXDB_VERSION=2.6.1
# Wed, 11 Jan 2023 17:51:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 17:51:29 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Wed, 11 Jan 2023 17:51:32 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 17:51:33 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 17:51:33 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 17:51:33 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 17:51:33 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 17:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:51:33 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 17:51:33 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 17:51:33 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 17:51:33 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 17:51:34 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 17:51:34 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:ac7f2e1c758675427623d0da4faa88b336c62466c15a98af61efd3f015282f2f`  
		Last Modified: Wed, 11 Jan 2023 02:39:26 GMT  
		Size: 50.4 MB (50448910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdf7fce05b60278ea57279b4fd04f78778f80a6d64b6f875afc4bde32c2d1b`  
		Last Modified: Wed, 11 Jan 2023 03:13:10 GMT  
		Size: 7.9 MB (7859410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed0c2752d8478245519a7aab5e660053796af3c7ea7b34ad3df855b33ff5502`  
		Last Modified: Wed, 11 Jan 2023 03:13:09 GMT  
		Size: 10.0 MB (10001385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48017590002e8716ceb43c70e063a7507c9fb72448df11f9c69fa04bc0eb68bc`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fe1f7c98ab28877706d5ee8210f401fcb074ab8d84e3f3b323571e3267b066`  
		Last Modified: Wed, 11 Jan 2023 17:54:09 GMT  
		Size: 961.0 KB (960962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdae51f5affc73a6549fc4c6e4e80303e85cafc843ab07965aa79fc61d86de2`  
		Last Modified: Wed, 11 Jan 2023 17:55:02 GMT  
		Size: 93.7 MB (93699451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81926b710fc45102c4fd22f718845aa25abd62a1677f0beae8fe824dbfa2e49b`  
		Last Modified: Wed, 11 Jan 2023 17:54:52 GMT  
		Size: 6.2 MB (6210925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75f549d66d8fd9e4773016007add2e4171c0f6bf532e3525c3ac4407db2a4b7`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c9bf5ace6f75dba7e8e165d87c9d74cda203919adb4ff9b6e2719fc73fe75b`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dce1f756a322d61f554bfde2e704a69f33a8dc70420f7bb3f97f233bf91aba`  
		Last Modified: Wed, 11 Jan 2023 17:54:51 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:27a4c23533d8cecd0c3f9067a91bd3b83e00dde7616e8bee5fd833c5a92321fd
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163857926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dc4d804599a40aef9ba5cb4243f32efa69d01fbea5789ee18b56f40961136b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:43 GMT
ADD file:6b2b58305052bb953886c976022efeb324ef33bc6e55f9e15915e98490bd8fcb in / 
# Wed, 11 Jan 2023 02:57:43 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 18:04:42 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --home-dir=/home/influxdb --shell=/bin/bash influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb
# Wed, 11 Jan 2023 18:04:42 GMT
ENV GOSU_VER=1.12
# Wed, 11 Jan 2023 18:04:46 GMT
RUN set -eux;     dpkgArch="$(dpkg --print-architecture)" &&     wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch" &&     wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-$dpkgArch.asc" &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true
# Wed, 11 Jan 2023 18:05:24 GMT
ENV INFLUXDB_VERSION=2.6.1
# Wed, 11 Jan 2023 18:05:29 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2_linux_${ARCH}/influxd /usr/local/bin/influxd &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-${INFLUXDB_VERSION}-linux-${ARCH}* &&     influxd version
# Wed, 11 Jan 2023 18:05:30 GMT
ENV INFLUX_CLI_VERSION=2.6.1
# Wed, 11 Jan 2023 18:05:38 GMT
RUN set -eux &&     ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in         amd64) ARCH='amd64';;         arm64) ARCH='arm64';;         *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     echo "disable-ipv6" >> $GNUPGHOME/dirmngr.conf &&     gpg --batch --keyserver keys.openpgp.org --recv-keys 8C2D403D3C3BDB81A4C27C883C3E4B7317FFE40A &&     gpg --batch --verify influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz.asc influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     tar xzf influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}.tar.gz &&     cp influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}/influx /usr/local/bin/influx &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" influxdb2.key influxdb2-client-${INFLUX_CLI_VERSION}-linux-${ARCH}* &&     influx version
# Wed, 11 Jan 2023 18:05:39 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2
# Wed, 11 Jan 2023 18:05:39 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 11 Jan 2023 18:05:39 GMT
COPY file:77129326da9464dfa98aab4911582df608de5d5bf6a6f6ed89619b704cac95bc in /etc/defaults/influxdb2/config.yml 
# Wed, 11 Jan 2023 18:05:39 GMT
COPY file:dbf3d010c7392537ae2b4c9b0d90a1ba01accd63948136585d5decc93bb52afc in /entrypoint.sh 
# Wed, 11 Jan 2023 18:05:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 18:05:39 GMT
CMD ["influxd"]
# Wed, 11 Jan 2023 18:05:39 GMT
EXPOSE 8086
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 11 Jan 2023 18:05:39 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 11 Jan 2023 18:05:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:15639959ffec1b29b8f88b1e1db3ca0574ca52ee28fd8f3ac6d2cbb1c85fb209`  
		Last Modified: Wed, 11 Jan 2023 03:01:37 GMT  
		Size: 49.2 MB (49233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef007f1599a716143291e5dce35505ba1462668b8263c8bc4252f52305fec5`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 7.7 MB (7727435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58deacb177a21829f3def5ff81fe30a25fb59962eb4d1a844f21a22e5cbd148b`  
		Last Modified: Wed, 11 Jan 2023 03:32:31 GMT  
		Size: 10.0 MB (10003598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749d3faa940996ac12ba0eb30edcc608a284fa01b88d8a887a8ac84385295d8`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97041f33dff2920376eaf0f2e9fc92cb05d66a708b8c95209864946ab9190514`  
		Last Modified: Wed, 11 Jan 2023 18:06:20 GMT  
		Size: 896.4 KB (896355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e646997fdf38145df960e14349b3ddd2518274cf669c18ee5245564ab5f8e5e`  
		Last Modified: Wed, 11 Jan 2023 18:07:04 GMT  
		Size: 90.3 MB (90285213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9c14798514de56be20ee00a8ad0dd44ac5adb656eaec9d8c3d54fa7cd4f12e`  
		Last Modified: Wed, 11 Jan 2023 18:06:57 GMT  
		Size: 5.7 MB (5704048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aafe275a253229c64327f44c39a34bdfaa8946af43d53a6bd314c54cde6bc1b`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1359569ec8a42c9fd8a59f3eeb91e175acc9c826da12431affcd7a669b659ef`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4730982b0903caa866691660687cdc90ad506dd178d4980391959dc022bc2dd3`  
		Last Modified: Wed, 11 Jan 2023 18:06:56 GMT  
		Size: 5.1 KB (5129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:e5defde75049e931842356b73b5b111214c159eec11b95f4b12f322a58a46ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:26a1f9c4f41c24163271ad01e1f72c3cee8c5585a1540c40a425424a3bce1b1f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94481556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dbd58263a20f9ac9461df19776ed0b11d9670165ac912b46856bc9f3761def`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 17:49:57 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done
# Wed, 11 Jan 2023 17:50:06 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Wed, 11 Jan 2023 17:50:16 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 11 Jan 2023 17:50:16 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 11 Jan 2023 17:50:16 GMT
EXPOSE 8091
# Wed, 11 Jan 2023 17:50:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 11 Jan 2023 17:50:17 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 11 Jan 2023 17:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2023 17:50:17 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6095c9511ba7fec4fb2ec53b679e4abd981589a333c7a347a0d74aaacc6bb1`  
		Last Modified: Wed, 11 Jan 2023 17:52:20 GMT  
		Size: 2.9 KB (2897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae04e4411bf42f9719fd8f70ccb6a120dba859ede432f87631e67e0a69a6feec`  
		Last Modified: Wed, 11 Jan 2023 17:53:00 GMT  
		Size: 23.4 MB (23412775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842ca99e5db7409fc060986cea7546434115ba16e0788dc6f57ac641ee7f0e0e`  
		Last Modified: Wed, 11 Jan 2023 17:52:57 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5a793bcae85f6f8e821b5259599b3b01dd26f6c41fdea40937a9a7fc26933`  
		Last Modified: Wed, 11 Jan 2023 17:52:57 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:e54c4cb5759595c14e3d8e9e84cf6d500951658b9cd1e5297c978e8516c73c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:b0e146b30f81e6588cda723946c2e8b6feca9e6932e57a59585bf5ae43890db4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27602995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afcdc6818b36dab0a9b82d98969c463aca2b85fd9602d1344baf017917c3c9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:15:36 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 06 Oct 2022 22:40:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 06 Oct 2022 22:40:20 GMT
ENV INFLUXDB_VERSION=1.8.10-c1.8.10
# Thu, 06 Oct 2022 22:40:39 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 06 Oct 2022 22:40:40 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 06 Oct 2022 22:40:40 GMT
EXPOSE 8091
# Thu, 06 Oct 2022 22:40:40 GMT
VOLUME [/var/lib/influxdb]
# Thu, 06 Oct 2022 22:40:40 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 06 Oct 2022 22:40:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Oct 2022 22:40:40 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133509570f70da73b5369d8311a4269568dbea851313f10ea1b8cb1a2c4e2fe8`  
		Last Modified: Thu, 06 Oct 2022 20:16:43 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f39caa57d4803ac41d99e33b97d3a30ededc88eb971422b972f621bf32733cc`  
		Last Modified: Thu, 06 Oct 2022 22:43:12 GMT  
		Size: 1.5 MB (1481282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2888fe258e30ad3d0dfc4c02cb57422a39f38c6535f624bf01a9e1a9fc3215f`  
		Last Modified: Thu, 06 Oct 2022 22:43:54 GMT  
		Size: 23.3 MB (23293473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd62607efcaec46b698b09a7ab3df2c11a01512bdadef6915d63b6ff5d9cdb9`  
		Last Modified: Thu, 06 Oct 2022 22:43:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cea404d4e11d2846f9a5d3ec2b3d200462d5d41e8ac23915813eda3bb3a1fd`  
		Last Modified: Thu, 06 Oct 2022 22:43:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
