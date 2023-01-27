## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:19fdd2d84a7fdcda3fef95b134071ce501f20c2f95a3ce8cd3504d21be60c004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:ff3016de88eda9ee9d775cb885b78a997a44b5d759b1e6df1cbd149196e1b0bc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67432736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8856d4f574f050ef63777bc8173560acbfbdebaba0e167ab06616c57c6b9834b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 08:32:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 12 Nov 2022 08:32:06 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Sat, 12 Nov 2022 08:32:06 GMT
ENV KAPACITOR_VERSION=1.6.5
# Sat, 12 Nov 2022 08:32:14 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}_linux_amd64.tar.gz &&     cp -ar /usr/src/kapacitor-*/* / &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Sat, 12 Nov 2022 08:32:15 GMT
EXPOSE 9092
# Sat, 12 Nov 2022 08:32:15 GMT
VOLUME [/var/lib/kapacitor]
# Sat, 12 Nov 2022 08:32:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Sat, 12 Nov 2022 08:32:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 12 Nov 2022 08:32:15 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8c4909872f004bb7fe69291336b9a1be138c76e18c8706b787cce0ddf850c`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929562737169c4393ad5f6103decd57cf14ff1d393dfe7653bcd6ca7bfdda6f5`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 284.8 KB (284752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d1ff08550ae28e870027839013e280fc09684f0982ed4c2d3c90f8056b4878`  
		Last Modified: Sat, 12 Nov 2022 08:32:43 GMT  
		Size: 64.3 MB (64340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea3489d0c1436760d9853468918a92f127fd0f373492eb22b709fb34a284b1`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519d8fabb4adf299cd6de32215a329e4e155a08c7bf42cabbf0d9cac07d5c61`  
		Last Modified: Sat, 12 Nov 2022 08:32:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
