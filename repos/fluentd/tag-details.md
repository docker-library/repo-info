<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fluentd`

-	[`fluentd:latest`](#fluentdlatest)
-	[`fluentd:v1.14-1`](#fluentdv114-1)
-	[`fluentd:v1.14-debian-1`](#fluentdv114-debian-1)
-	[`fluentd:v1.14.0-1.0`](#fluentdv1140-10)
-	[`fluentd:v1.14.0-debian-1.0`](#fluentdv1140-debian-10)

## `fluentd:latest`

```console
$ docker pull fluentd@sha256:14a6dabafd296f9601f69d2b000de270a457779e466ae735feef62d47f9c4bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:latest` - linux; amd64

```console
$ docker pull fluentd@sha256:0df9599d013815bc02c8046b1df6e8137bef905fd5d4d15612ef4c7506528af0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20382342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bb541bfc9908f21cb0dd96aaaacb54d846895aecd4b03c4a16707d4f4f13e4`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:14 GMT
ADD file:7fd90c097e2c4587dee91726d71abc02fa1aa6a3a3395c862206a4e14e0c299c in / 
# Tue, 09 Aug 2022 17:20:14 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 21:15:14 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 21:15:14 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 21:15:59 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 21:16:00 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 21:16:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 21:16:00 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 21:16:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 21:16:01 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 21:16:01 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 21:16:01 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 21:16:01 GMT
USER fluent
# Thu, 06 Oct 2022 21:16:01 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 21:16:01 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:72cfd02ff4d01b1f319eed108b53120dea0185b916d2abeb4e6121879cbf7a65`  
		Last Modified: Tue, 09 Aug 2022 17:21:16 GMT  
		Size: 2.8 MB (2827571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9fa3e4dcfc088d46409de9b0d40c5fc4940e4c7a6975ef269dd6a7e8a6a6a`  
		Last Modified: Thu, 06 Oct 2022 21:16:26 GMT  
		Size: 17.6 MB (17552569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f7bec4ded6c3da9e4647897ca5b68a1c7d8e70bcfd0442325778e2753addd2`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7caecdf56fe6b18386ddd1f5b3f445e694b76d8c72ffea129afc0f645c4692`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cecf5130357297a55cad85eb73b9c571a0d6d42377e70e805ff8fd7e29adb7`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:5d8e0def7f349678f6fa13644b9b97c8026f85f510d0bd62ffd972b06d9b76a9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19575117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76ff280687e4ca6aa10d2b5ff427f882a3ec9c64397c749d6af70ac7eeac291`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:51 GMT
ADD file:541b767b21b9e0c4dab118d5e000990da3dbb81b547c1ee9941e2cf7edc5edd6 in / 
# Thu, 10 Nov 2022 20:49:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:43:50 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 10 Nov 2022 21:43:50 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 10 Nov 2022 21:44:57 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 10 Nov 2022 21:44:59 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 10 Nov 2022 21:45:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 10 Nov 2022 21:45:00 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 10 Nov 2022 21:45:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 10 Nov 2022 21:45:01 GMT
ENV LD_PRELOAD=
# Thu, 10 Nov 2022 21:45:02 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 10 Nov 2022 21:45:02 GMT
EXPOSE 24224 5140
# Thu, 10 Nov 2022 21:45:02 GMT
USER fluent
# Thu, 10 Nov 2022 21:45:03 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 10 Nov 2022 21:45:03 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b423ab447fbb66b194458908339addbb5dd52e4aa7d04a42b387cdc07bbd92a1`  
		Last Modified: Tue, 09 Aug 2022 17:51:16 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ce41543c897f9e4a351ee99978feaf87bd0f5b16fdafe2e65186f551cca6ec`  
		Last Modified: Thu, 10 Nov 2022 21:45:33 GMT  
		Size: 16.9 MB (16939425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83df6ded56cc58cccffc3579cfd5c93d6d50dcb87f5a1f50a964fe42dad9e48c`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9342de74acf84bc9293468f12b3f5f0b3896e1a5024e190cca177a1ca39b207`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9613ad7445852f4dd6032e06267233a18ecfcca00c7eb77a3f4968cf2ad5933a`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:f0a2b35718ed6aeb5dfa63f71fe1bb4c9536ff0716723c1381ed15a43397ae1f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20183367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0cb924fbdb3d9747d5621b71908001ddf98333f879af3ebbfeef93d699f2677`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:56 GMT
ADD file:f23c059b4312458fbf0fc018d4695f36157a3eb6e5a83167912a39f9a738f4eb in / 
# Thu, 10 Nov 2022 20:39:56 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:41:33 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 10 Nov 2022 21:41:33 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 10 Nov 2022 21:42:11 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 10 Nov 2022 21:42:12 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 10 Nov 2022 21:42:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 10 Nov 2022 21:42:12 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 10 Nov 2022 21:42:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 10 Nov 2022 21:42:12 GMT
ENV LD_PRELOAD=
# Thu, 10 Nov 2022 21:42:12 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 10 Nov 2022 21:42:12 GMT
EXPOSE 24224 5140
# Thu, 10 Nov 2022 21:42:12 GMT
USER fluent
# Thu, 10 Nov 2022 21:42:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 10 Nov 2022 21:42:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:25f523f0e93b2b5fa676c15d91b90f08ee4de7a160874e6c52ea452929d5a7cc`  
		Last Modified: Tue, 09 Aug 2022 17:41:17 GMT  
		Size: 2.7 MB (2722126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943400719ecc8dd281506bcfbeacdfe71001445486b5dca2cee2337f5b22d0c2`  
		Last Modified: Thu, 10 Nov 2022 21:44:00 GMT  
		Size: 17.5 MB (17459038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a24bdbe56f1da427c4e69fc430a098c16ab68b5ea63a248877090fc9e89984`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74291d8e80b8d1091254b1ac1e9106904ba335d7be86b101ae92b1941ad30f20`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b5bf292ba846aa42a8ba9878c9fb4012c5c220de02c9ee04dff2046f263046`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:c0995715a992f1d0a79366ea32a9e96048f422a9bc1a9293fae90ccee1d598dc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19837484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b46697e0f7c6af78ba4a7293e7408f6688ced8b4da0b47b283758d93cefd84`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:39:01 GMT
ADD file:03626e5c8651aac4c8e12fa9ad40c1ed5c1cf728846275ccb6a154d33f64567e in / 
# Tue, 09 Aug 2022 17:39:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:00:58 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:00:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:01:47 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:01:47 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:01:49 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:01:50 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:01:50 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:01:51 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:01:52 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:01:53 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:01:54 GMT
USER fluent
# Thu, 06 Oct 2022 20:01:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:01:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bb0cde90e12d5206d6293dc0d9e482ef617f00aa0d4286810adb0700c188ede4`  
		Last Modified: Tue, 09 Aug 2022 17:40:12 GMT  
		Size: 2.8 MB (2829774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435f51fe2d4d59d818e12438561807021fad7ced07b1780a7d47df00670a9797`  
		Last Modified: Thu, 06 Oct 2022 20:02:29 GMT  
		Size: 17.0 MB (17005555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915246a0dddfd636c891698cb4446182a25e8c4921388019488dc3c0844f202f`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c91e38ddf730a3fffc05556726d56625590e26ee10c0eff00cfbf65c8b8942b`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2efbde096e960371980d58a9df5b1a527ef22ba54b3c0542c491cb48b6a053`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:fa629c265dbdb5d8807f13fdc5f66cc0c192ae6daff666447a9192c2f50b30f7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20423388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d62a279499a9175102ccbbd930054f6269d0f5f7cb95cd0222eb1178cc42ba`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:40 GMT
ADD file:484b4a940601ea0eee86b54ed0bbab522d82063504d5e404297522cec2da2410 in / 
# Tue, 09 Aug 2022 17:17:41 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:23:23 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:23:23 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:24:50 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:24:53 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:24:53 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:24:53 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:24:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:24:54 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:24:54 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:24:54 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:24:55 GMT
USER fluent
# Thu, 06 Oct 2022 20:24:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:24:55 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:92709067783fb8dba06b304866998cd7cbe11f3ceaaf90c0c74832e1d007c1f7`  
		Last Modified: Tue, 09 Aug 2022 17:19:09 GMT  
		Size: 2.8 MB (2818026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c076900adce70b7c3d31c631d52677dfc674e6d136423ed13e365bfea0d9bb45`  
		Last Modified: Thu, 06 Oct 2022 20:25:26 GMT  
		Size: 17.6 MB (17603156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffd94570f6e1867831f4ad21939b2b03a9ce2c5dfa4df81afbe8e50358dbc5f`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7042d0234b589dfe0b2277327f7196d75b99509a3bfce6ca685e1f389b1f213`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ec0f74ee2d2468c4ae957e6e2e4380bfcda95647dbc0371c3a5674b8f1c4a4`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:38e3ac8795f550e9cd74e0bea4f265e1512ab73f2f5863a40c17df111eacb4bd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20111138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941af3b15377f7deac6df91d21b6276ab09eb1580f0b205e8a747d3b61e64cc7`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:42:10 GMT
ADD file:a30f78876e4c7fee29ec287fe4b4f48621431512b0e81289b1fe23b3d6f7660f in / 
# Tue, 09 Aug 2022 17:42:11 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:13:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:13:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:14:49 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:14:53 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:14:53 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:14:54 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:14:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:14:54 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:14:55 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:14:55 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:14:55 GMT
USER fluent
# Thu, 06 Oct 2022 20:14:56 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:14:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:43943356f3daa5170be0f37f440cbf412003a7271fe424841157976e33a9c418`  
		Last Modified: Tue, 09 Aug 2022 17:43:11 GMT  
		Size: 2.6 MB (2611905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5015e62a78e137f2546a685f007cd80f1b40e36b32f07f70460de9b34cb8299b`  
		Last Modified: Thu, 06 Oct 2022 20:15:28 GMT  
		Size: 17.5 MB (17497028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612ebf9a1dc75ed065627005f79454b15c360ee25e2fe7f7d89a159382139429`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b59afb6820499bac99374fbb145b826fb96afce0e96fcfb58048e68fd92a2`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bcee240616bf9c95b1afd44ff91c1cde29f4575f9098de676042c61111898`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.14-1`

```console
$ docker pull fluentd@sha256:14a6dabafd296f9601f69d2b000de270a457779e466ae735feef62d47f9c4bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.14-1` - linux; amd64

```console
$ docker pull fluentd@sha256:0df9599d013815bc02c8046b1df6e8137bef905fd5d4d15612ef4c7506528af0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20382342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bb541bfc9908f21cb0dd96aaaacb54d846895aecd4b03c4a16707d4f4f13e4`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:14 GMT
ADD file:7fd90c097e2c4587dee91726d71abc02fa1aa6a3a3395c862206a4e14e0c299c in / 
# Tue, 09 Aug 2022 17:20:14 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 21:15:14 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 21:15:14 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 21:15:59 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 21:16:00 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 21:16:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 21:16:00 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 21:16:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 21:16:01 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 21:16:01 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 21:16:01 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 21:16:01 GMT
USER fluent
# Thu, 06 Oct 2022 21:16:01 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 21:16:01 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:72cfd02ff4d01b1f319eed108b53120dea0185b916d2abeb4e6121879cbf7a65`  
		Last Modified: Tue, 09 Aug 2022 17:21:16 GMT  
		Size: 2.8 MB (2827571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9fa3e4dcfc088d46409de9b0d40c5fc4940e4c7a6975ef269dd6a7e8a6a6a`  
		Last Modified: Thu, 06 Oct 2022 21:16:26 GMT  
		Size: 17.6 MB (17552569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f7bec4ded6c3da9e4647897ca5b68a1c7d8e70bcfd0442325778e2753addd2`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7caecdf56fe6b18386ddd1f5b3f445e694b76d8c72ffea129afc0f645c4692`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cecf5130357297a55cad85eb73b9c571a0d6d42377e70e805ff8fd7e29adb7`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-1` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:5d8e0def7f349678f6fa13644b9b97c8026f85f510d0bd62ffd972b06d9b76a9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19575117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76ff280687e4ca6aa10d2b5ff427f882a3ec9c64397c749d6af70ac7eeac291`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:51 GMT
ADD file:541b767b21b9e0c4dab118d5e000990da3dbb81b547c1ee9941e2cf7edc5edd6 in / 
# Thu, 10 Nov 2022 20:49:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:43:50 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 10 Nov 2022 21:43:50 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 10 Nov 2022 21:44:57 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 10 Nov 2022 21:44:59 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 10 Nov 2022 21:45:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 10 Nov 2022 21:45:00 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 10 Nov 2022 21:45:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 10 Nov 2022 21:45:01 GMT
ENV LD_PRELOAD=
# Thu, 10 Nov 2022 21:45:02 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 10 Nov 2022 21:45:02 GMT
EXPOSE 24224 5140
# Thu, 10 Nov 2022 21:45:02 GMT
USER fluent
# Thu, 10 Nov 2022 21:45:03 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 10 Nov 2022 21:45:03 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b423ab447fbb66b194458908339addbb5dd52e4aa7d04a42b387cdc07bbd92a1`  
		Last Modified: Tue, 09 Aug 2022 17:51:16 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ce41543c897f9e4a351ee99978feaf87bd0f5b16fdafe2e65186f551cca6ec`  
		Last Modified: Thu, 10 Nov 2022 21:45:33 GMT  
		Size: 16.9 MB (16939425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83df6ded56cc58cccffc3579cfd5c93d6d50dcb87f5a1f50a964fe42dad9e48c`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9342de74acf84bc9293468f12b3f5f0b3896e1a5024e190cca177a1ca39b207`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9613ad7445852f4dd6032e06267233a18ecfcca00c7eb77a3f4968cf2ad5933a`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-1` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:f0a2b35718ed6aeb5dfa63f71fe1bb4c9536ff0716723c1381ed15a43397ae1f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20183367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0cb924fbdb3d9747d5621b71908001ddf98333f879af3ebbfeef93d699f2677`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:56 GMT
ADD file:f23c059b4312458fbf0fc018d4695f36157a3eb6e5a83167912a39f9a738f4eb in / 
# Thu, 10 Nov 2022 20:39:56 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:41:33 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 10 Nov 2022 21:41:33 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 10 Nov 2022 21:42:11 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 10 Nov 2022 21:42:12 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 10 Nov 2022 21:42:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 10 Nov 2022 21:42:12 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 10 Nov 2022 21:42:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 10 Nov 2022 21:42:12 GMT
ENV LD_PRELOAD=
# Thu, 10 Nov 2022 21:42:12 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 10 Nov 2022 21:42:12 GMT
EXPOSE 24224 5140
# Thu, 10 Nov 2022 21:42:12 GMT
USER fluent
# Thu, 10 Nov 2022 21:42:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 10 Nov 2022 21:42:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:25f523f0e93b2b5fa676c15d91b90f08ee4de7a160874e6c52ea452929d5a7cc`  
		Last Modified: Tue, 09 Aug 2022 17:41:17 GMT  
		Size: 2.7 MB (2722126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943400719ecc8dd281506bcfbeacdfe71001445486b5dca2cee2337f5b22d0c2`  
		Last Modified: Thu, 10 Nov 2022 21:44:00 GMT  
		Size: 17.5 MB (17459038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a24bdbe56f1da427c4e69fc430a098c16ab68b5ea63a248877090fc9e89984`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74291d8e80b8d1091254b1ac1e9106904ba335d7be86b101ae92b1941ad30f20`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b5bf292ba846aa42a8ba9878c9fb4012c5c220de02c9ee04dff2046f263046`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-1` - linux; 386

```console
$ docker pull fluentd@sha256:c0995715a992f1d0a79366ea32a9e96048f422a9bc1a9293fae90ccee1d598dc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19837484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b46697e0f7c6af78ba4a7293e7408f6688ced8b4da0b47b283758d93cefd84`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:39:01 GMT
ADD file:03626e5c8651aac4c8e12fa9ad40c1ed5c1cf728846275ccb6a154d33f64567e in / 
# Tue, 09 Aug 2022 17:39:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:00:58 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:00:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:01:47 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:01:47 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:01:49 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:01:50 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:01:50 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:01:51 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:01:52 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:01:53 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:01:54 GMT
USER fluent
# Thu, 06 Oct 2022 20:01:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:01:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bb0cde90e12d5206d6293dc0d9e482ef617f00aa0d4286810adb0700c188ede4`  
		Last Modified: Tue, 09 Aug 2022 17:40:12 GMT  
		Size: 2.8 MB (2829774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435f51fe2d4d59d818e12438561807021fad7ced07b1780a7d47df00670a9797`  
		Last Modified: Thu, 06 Oct 2022 20:02:29 GMT  
		Size: 17.0 MB (17005555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915246a0dddfd636c891698cb4446182a25e8c4921388019488dc3c0844f202f`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c91e38ddf730a3fffc05556726d56625590e26ee10c0eff00cfbf65c8b8942b`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2efbde096e960371980d58a9df5b1a527ef22ba54b3c0542c491cb48b6a053`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-1` - linux; ppc64le

```console
$ docker pull fluentd@sha256:fa629c265dbdb5d8807f13fdc5f66cc0c192ae6daff666447a9192c2f50b30f7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20423388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d62a279499a9175102ccbbd930054f6269d0f5f7cb95cd0222eb1178cc42ba`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:40 GMT
ADD file:484b4a940601ea0eee86b54ed0bbab522d82063504d5e404297522cec2da2410 in / 
# Tue, 09 Aug 2022 17:17:41 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:23:23 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:23:23 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:24:50 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:24:53 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:24:53 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:24:53 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:24:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:24:54 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:24:54 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:24:54 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:24:55 GMT
USER fluent
# Thu, 06 Oct 2022 20:24:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:24:55 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:92709067783fb8dba06b304866998cd7cbe11f3ceaaf90c0c74832e1d007c1f7`  
		Last Modified: Tue, 09 Aug 2022 17:19:09 GMT  
		Size: 2.8 MB (2818026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c076900adce70b7c3d31c631d52677dfc674e6d136423ed13e365bfea0d9bb45`  
		Last Modified: Thu, 06 Oct 2022 20:25:26 GMT  
		Size: 17.6 MB (17603156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffd94570f6e1867831f4ad21939b2b03a9ce2c5dfa4df81afbe8e50358dbc5f`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7042d0234b589dfe0b2277327f7196d75b99509a3bfce6ca685e1f389b1f213`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ec0f74ee2d2468c4ae957e6e2e4380bfcda95647dbc0371c3a5674b8f1c4a4`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-1` - linux; s390x

```console
$ docker pull fluentd@sha256:38e3ac8795f550e9cd74e0bea4f265e1512ab73f2f5863a40c17df111eacb4bd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20111138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941af3b15377f7deac6df91d21b6276ab09eb1580f0b205e8a747d3b61e64cc7`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:42:10 GMT
ADD file:a30f78876e4c7fee29ec287fe4b4f48621431512b0e81289b1fe23b3d6f7660f in / 
# Tue, 09 Aug 2022 17:42:11 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:13:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:13:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:14:49 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:14:53 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:14:53 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:14:54 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:14:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:14:54 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:14:55 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:14:55 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:14:55 GMT
USER fluent
# Thu, 06 Oct 2022 20:14:56 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:14:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:43943356f3daa5170be0f37f440cbf412003a7271fe424841157976e33a9c418`  
		Last Modified: Tue, 09 Aug 2022 17:43:11 GMT  
		Size: 2.6 MB (2611905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5015e62a78e137f2546a685f007cd80f1b40e36b32f07f70460de9b34cb8299b`  
		Last Modified: Thu, 06 Oct 2022 20:15:28 GMT  
		Size: 17.5 MB (17497028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612ebf9a1dc75ed065627005f79454b15c360ee25e2fe7f7d89a159382139429`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b59afb6820499bac99374fbb145b826fb96afce0e96fcfb58048e68fd92a2`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bcee240616bf9c95b1afd44ff91c1cde29f4575f9098de676042c61111898`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.14-debian-1`

```console
$ docker pull fluentd@sha256:774066c3ce2adcf367d90e76d854240263ac52d6b4add37199b5c5f210f42079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.14-debian-1` - linux; amd64

```console
$ docker pull fluentd@sha256:31f856da4366b21eb65eb1606b626b9009649f52ca43126a2533622e2529c8d4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83344003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff043dd33e5716f51bf4ab2b99e677b3e9ce240040a876473f536a5d82580fb7`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 04:43:48 GMT
ADD file:011a43ee23214c201afb7f3b5be592f374b89a4c71aea82ca66146bbbc31b959 in / 
# Wed, 20 Apr 2022 04:43:48 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 13:53:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 13:53:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 13:53:29 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 14:26:43 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 14:26:43 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 14:26:44 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 14:28:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 14:28:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 14:28:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 14:28:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 14:28:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 14:28:39 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 11:23:52 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 11:23:52 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 11:23:52 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 11:25:10 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 11:25:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 11:25:11 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 11:25:11 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 11:25:11 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 11:25:11 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 11:25:11 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 11:25:12 GMT
USER fluent
# Thu, 21 Apr 2022 11:25:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 11:25:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:4be315f6562fccf08fd6c749557e31e45ab6d987370e20e2c4933ddb04ddd5ff`  
		Last Modified: Wed, 20 Apr 2022 04:49:15 GMT  
		Size: 27.1 MB (27140664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1deab5c467752dc1ff271d1926326e23b8a5ee00a4ba0498ecc56a5e1487ef`  
		Last Modified: Wed, 20 Apr 2022 14:31:32 GMT  
		Size: 12.6 MB (12575227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ec9d073812451287ed13e111307c9386052b3a1166ff05bcb1b0408d41578b`  
		Last Modified: Wed, 20 Apr 2022 14:31:29 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b424a674e27ad5769a255ca3eddff5a17b43fb7d48a1885b419ad1c0c200f036`  
		Last Modified: Wed, 20 Apr 2022 14:36:28 GMT  
		Size: 21.5 MB (21499847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16233d272929239efa9ed12b6172584706453fdbbb783d198c2ac66f6af904f`  
		Last Modified: Wed, 20 Apr 2022 14:36:26 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428b5255ca73b2b0149d2d46d32a00955769990664c25ffbbc6eb5da3a56b544`  
		Last Modified: Thu, 21 Apr 2022 11:25:28 GMT  
		Size: 22.1 MB (22125180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50568e080010417eb887e7e4fb346638cd8c14d89521bf180b81cdf348f76b3`  
		Last Modified: Thu, 21 Apr 2022 11:25:24 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722ad09eaafb3109b04e8e25199a744e2cacb3fdd1e161ea137a4d55e97a1ff`  
		Last Modified: Thu, 21 Apr 2022 11:25:24 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c121ef8440dda93bd91856f7f735402e6bf6ca253f6a3ee6eba9f35381760dd`  
		Last Modified: Thu, 21 Apr 2022 11:25:24 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-debian-1` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:2d2de675b002f4a0cace50a8459f0b38ad45de9a17b1dc62c09e99890d8f361b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77283802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7c5e7a25cc9074f8b7e309a3965f51e34efc2e78cf85563488efd7351eab96`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 07:17:47 GMT
ADD file:5b740716d202d2f3494df5e108c0ba999125920ed9c97803fe0ccdfeba5cf518 in / 
# Wed, 20 Apr 2022 07:17:48 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 21:22:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 21:22:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 22:38:56 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 22:38:56 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 22:38:56 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 22:43:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 22:43:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 22:43:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 22:43:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 22:43:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 22:43:31 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 16:36:42 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 16:36:43 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 16:36:43 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 16:40:17 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 16:40:19 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 16:40:19 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 16:40:20 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 16:40:20 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 16:40:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 16:40:21 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 16:40:21 GMT
USER fluent
# Thu, 21 Apr 2022 16:40:22 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 16:40:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:1fc8704cfa531d4583c5d4d571b836a82c02a812dae88792c4397cf1c1770405`  
		Last Modified: Wed, 20 Apr 2022 07:33:54 GMT  
		Size: 24.9 MB (24889592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fa4f5186cdac36b883349f2a4c873674b796d97d8205016f21caffcc03559e`  
		Last Modified: Wed, 20 Apr 2022 22:50:57 GMT  
		Size: 10.4 MB (10355807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0d10b4fa5ade38a8ac4858b320fe9a2a7117fd461efe20047339ac801689f9`  
		Last Modified: Wed, 20 Apr 2022 22:50:52 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7457a099763babee2e33ef7dc834e6ae9c8a42a3c3dc69b2326d7a2a347df12`  
		Last Modified: Wed, 20 Apr 2022 22:58:28 GMT  
		Size: 20.8 MB (20762082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f160c58984b69c2363d7f91c47ec0a2250928fadf658dbab07763ffb32ddfc`  
		Last Modified: Wed, 20 Apr 2022 22:58:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3e414f2867bd9085b895455c7e6bb00231ae0616f4d43973fd6879a58855f`  
		Last Modified: Thu, 21 Apr 2022 16:40:56 GMT  
		Size: 21.3 MB (21273245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209776582075367a450a96d4ba3d85649e97863d39e5bc11155658be90937ad6`  
		Last Modified: Thu, 21 Apr 2022 16:40:43 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e2a691d318b62fe73409618facb3796cb39d0d6dcbc9c7b3cb17851dd874a6`  
		Last Modified: Thu, 21 Apr 2022 16:40:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bbc9667cc25f0168adbcb111c9b44e58d619bd707e96f74e8d327f6a303582`  
		Last Modified: Thu, 21 Apr 2022 16:40:43 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-debian-1` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:17b49a9814058c4e6f5293452eec695e2f94f6eb871427b4d4c69921530c4e07
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74455776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e56d2c4316c3e92ce005758c65cba4a16ba0be1799ef389b7c03209afd2b07`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 13:28:26 GMT
ADD file:2a755b6e7bf01ec959b8bb848b6d46f292821a0bf08e04d565991ec4bdbea029 in / 
# Wed, 20 Apr 2022 13:28:27 GMT
CMD ["bash"]
# Thu, 21 Apr 2022 12:05:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 21 Apr 2022 12:05:45 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 21 Apr 2022 12:05:45 GMT
ENV LANG=C.UTF-8
# Thu, 21 Apr 2022 13:18:31 GMT
ENV RUBY_MAJOR=2.6
# Thu, 21 Apr 2022 13:18:31 GMT
ENV RUBY_VERSION=2.6.10
# Thu, 21 Apr 2022 13:18:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Thu, 21 Apr 2022 13:22:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Thu, 21 Apr 2022 13:22:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 21 Apr 2022 13:22:59 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 21 Apr 2022 13:23:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Apr 2022 13:23:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 21 Apr 2022 13:23:02 GMT
CMD ["irb"]
# Fri, 22 Apr 2022 13:55:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 22 Apr 2022 13:55:10 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Fri, 22 Apr 2022 13:55:11 GMT
ENV TINI_VERSION=0.18.0
# Fri, 22 Apr 2022 13:58:29 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Fri, 22 Apr 2022 13:58:31 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 22 Apr 2022 13:58:32 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 22 Apr 2022 13:58:32 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Fri, 22 Apr 2022 13:58:32 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 22 Apr 2022 13:58:33 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Fri, 22 Apr 2022 13:58:33 GMT
EXPOSE 24224 5140
# Fri, 22 Apr 2022 13:58:34 GMT
USER fluent
# Fri, 22 Apr 2022 13:58:34 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 22 Apr 2022 13:58:35 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:88467ac22b4358b1b60009f6332ba9e12b7a82a36bef334d91d68dbf8b58d96f`  
		Last Modified: Wed, 20 Apr 2022 13:45:04 GMT  
		Size: 22.7 MB (22747865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f5df018d1b3798d92c483f743680f2a75bffcdb2fdc65e25e7f953eb8a87f0`  
		Last Modified: Thu, 21 Apr 2022 13:33:13 GMT  
		Size: 9.9 MB (9874505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b38d238f3ca5becba32e5047390d0bcb058b996a68f108e08405859ca418d3`  
		Last Modified: Thu, 21 Apr 2022 13:33:06 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b083e63acb6d37e235be7c512b6ce8f65effa74e2ad3b40902550644332402`  
		Last Modified: Thu, 21 Apr 2022 13:42:10 GMT  
		Size: 20.7 MB (20671986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5dd4f4577d330035372d074d2ba00829867a46ad7c0c1ac84f0daf72bb70a`  
		Last Modified: Thu, 21 Apr 2022 13:42:01 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525b5e78ab93f35dec23e4e56c8587d5f0ff20410936c86203c85122bfc60fee`  
		Last Modified: Fri, 22 Apr 2022 13:59:10 GMT  
		Size: 21.2 MB (21158341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d888f0e289fbac36f7926a5678c6ea0ca621ae84a9047bed2d205a4827914fe0`  
		Last Modified: Fri, 22 Apr 2022 13:58:57 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ce9b363c31436572bbf5e81facae988a3e563fe6d5148408a5d95732bf0ffa`  
		Last Modified: Fri, 22 Apr 2022 13:58:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0bd4243746d54f1005f0ccc08571a3237bb49b941e1805baccbd7ac5fdaa63`  
		Last Modified: Fri, 22 Apr 2022 13:58:57 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-debian-1` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:c2595853422ba0ba6b596ff804c7459659373fadc87a7d7e435ac17529539b04
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80239158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ea7f7d3e1b2b7242044df00d890930aaf9b99445880d0f2f81dc094a58d54e`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 04:29:36 GMT
ADD file:5de4397c1295f7249c93907be599d96efbd9cd25909340d245ec8d1c9770f444 in / 
# Wed, 20 Apr 2022 04:29:37 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 12:29:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 12:29:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 12:29:07 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 13:03:06 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 13:03:07 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 13:03:08 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 13:04:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 13:04:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 13:04:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 13:04:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 13:04:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 13:04:58 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 10:45:20 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 10:45:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 10:45:22 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 10:47:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 10:47:05 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 10:47:07 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 10:47:08 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 10:47:08 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 10:47:09 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 10:47:10 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 10:47:11 GMT
USER fluent
# Thu, 21 Apr 2022 10:47:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 10:47:13 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6c3e5b218d6477ff77053280968d5bdeaa5dcf16a803e917d98dd0ea8b93ac82`  
		Last Modified: Wed, 20 Apr 2022 04:36:38 GMT  
		Size: 25.9 MB (25908349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77bf0e4ce7a30a322abda93e53b03cb918a055a6ed81e9fd64af6b89ca12f11`  
		Last Modified: Wed, 20 Apr 2022 13:09:31 GMT  
		Size: 11.3 MB (11274388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b549c099b7e79348caf083f065440e3a949b9804c1d7f0d928e46147a6d28a5`  
		Last Modified: Wed, 20 Apr 2022 13:09:29 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d03afd9dd9c30f1ee2fa331c106e94f3da7970be3730cc649461527e052ae7`  
		Last Modified: Wed, 20 Apr 2022 13:15:25 GMT  
		Size: 21.1 MB (21124502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a64fb3b7fff1da65681b4e2a40048db115daec40bdd81ef0f97c070f3838f`  
		Last Modified: Wed, 20 Apr 2022 13:15:23 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a3185549ed1865b94c03fc40dd408d0be0b2ca684476c545e491e9cb644f30`  
		Last Modified: Thu, 21 Apr 2022 10:47:50 GMT  
		Size: 21.9 MB (21929010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd0f3e3fd2a18f389ad6d4609fa9245abe3f01f5135960c850893d0ed8d8139`  
		Last Modified: Thu, 21 Apr 2022 10:47:46 GMT  
		Size: 1.7 KB (1700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b348cd8f8abd9ce1b8a42fd35b7fac0e805738906a2b7beb82c60191c51ff7c`  
		Last Modified: Thu, 21 Apr 2022 10:47:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4b65907a160901d531264b65ff47d2a3ca1ff5128983dbf19152c4147519cf`  
		Last Modified: Thu, 21 Apr 2022 10:47:46 GMT  
		Size: 461.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-debian-1` - linux; 386

```console
$ docker pull fluentd@sha256:ff1fc17bde6eab813abe059f97ec396276fab44bd1f5c872ab33df32c1b2e0c1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86868131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b4b0907e94acc3a1541cea481eda892db50ebf7fbe4bea7b0ddf3b4019c2ec`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 07:38:03 GMT
ADD file:602a25173054242f635a5a299845b7f1b56864ac5d3b8af1ae29dec3a9da119f in / 
# Wed, 20 Apr 2022 07:38:04 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 16:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 16:29:16 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 16:29:17 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 17:03:49 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 17:03:49 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 17:03:50 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 17:05:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 17:05:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 17:05:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 17:05:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 17:05:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 17:05:42 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 01:39:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 01:39:10 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 01:39:11 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 01:40:30 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 01:40:31 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 01:40:33 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 01:40:34 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 01:40:34 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 01:40:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 01:40:36 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 01:40:37 GMT
USER fluent
# Thu, 21 Apr 2022 01:40:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 01:40:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a13b13d818745c4d2234aab71df26e4a01bfe59f396ab62f20d156b94803650c`  
		Last Modified: Wed, 20 Apr 2022 07:45:46 GMT  
		Size: 27.8 MB (27799825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8adf63751cdcda285c6be0ce9703ea1d9a81d8a65fe1cc6b43a7aa4ac0d2c16`  
		Last Modified: Wed, 20 Apr 2022 17:11:08 GMT  
		Size: 17.2 MB (17232751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6abfc79ff6d122a3d9fe8305741b72a52a369ba65026a0f7e4b8e3796cbadb`  
		Last Modified: Wed, 20 Apr 2022 17:11:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84c30f0af95dcc4f8fdad5045acfa08b2b1cde3c7080fc71b23a4faca574e3c`  
		Last Modified: Wed, 20 Apr 2022 17:17:30 GMT  
		Size: 20.7 MB (20730306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55b718ab274a71879178596ff2d16a57c21c6cdeb17d8db750a38303745d092`  
		Last Modified: Wed, 20 Apr 2022 17:17:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efff0c8f44f3dea83268b7b2a6cf09b0642d5d17525c59ba26a9f7a9d50d3629`  
		Last Modified: Thu, 21 Apr 2022 01:41:09 GMT  
		Size: 21.1 MB (21102350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5cacd5fdd65f46d410a9810e65aea693a8accacdc6d09c76800dcf7045b44`  
		Last Modified: Thu, 21 Apr 2022 01:41:06 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fddd5f6b631698e185a61fcaff3794beb20af0e4936dbc182abef7ffa5a02db2`  
		Last Modified: Thu, 21 Apr 2022 01:41:06 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9fbfcd7aeb3bc63bc82946a3214c6ac6c58a7692ffa424b7f91ba962f870e0`  
		Last Modified: Thu, 21 Apr 2022 01:41:06 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-debian-1` - linux; ppc64le

```console
$ docker pull fluentd@sha256:bf74d13b29f4f7ba6fb964181f9d714fc7cce0848dea1633023ca9b1079e17d5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.1 MB (88099134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43f7af6b762b0ab6d02b24a021baccfaab8e4158e53d52ef546ee390238788d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 09:47:47 GMT
ADD file:69078e7ae6d887f7e36ae048f98f784678fbd8b7a8ec27e3c2bce0d68a47236d in / 
# Wed, 20 Apr 2022 09:47:51 GMT
CMD ["bash"]
# Thu, 21 Apr 2022 04:51:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 21 Apr 2022 04:51:22 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 21 Apr 2022 04:51:25 GMT
ENV LANG=C.UTF-8
# Thu, 21 Apr 2022 06:36:23 GMT
ENV RUBY_MAJOR=2.6
# Thu, 21 Apr 2022 06:36:26 GMT
ENV RUBY_VERSION=2.6.10
# Thu, 21 Apr 2022 06:36:29 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Thu, 21 Apr 2022 06:45:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Thu, 21 Apr 2022 06:45:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 21 Apr 2022 06:45:48 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 21 Apr 2022 06:45:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Apr 2022 06:46:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 21 Apr 2022 06:46:07 GMT
CMD ["irb"]
# Tue, 09 Aug 2022 18:10:40 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 09 Aug 2022 18:10:40 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Tue, 09 Aug 2022 18:10:40 GMT
ENV TINI_VERSION=0.18.0
# Tue, 09 Aug 2022 18:13:24 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Tue, 09 Aug 2022 18:13:26 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Tue, 09 Aug 2022 18:13:26 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Tue, 09 Aug 2022 18:13:27 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Tue, 09 Aug 2022 18:13:27 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 09 Aug 2022 18:13:27 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 09 Aug 2022 18:13:27 GMT
EXPOSE 24224 5140
# Tue, 09 Aug 2022 18:13:28 GMT
USER fluent
# Tue, 09 Aug 2022 18:13:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 09 Aug 2022 18:13:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:1aacfa28cbcef999a852ce9c261b67f15f0ccd8450cd1dbfe7b0dc88e6b5aba2`  
		Last Modified: Wed, 20 Apr 2022 09:58:02 GMT  
		Size: 30.6 MB (30560296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43fdaded5bf84bf5c649e118901ddbf5e97ef76eec00d7069aa6734146e1532`  
		Last Modified: Thu, 21 Apr 2022 06:51:48 GMT  
		Size: 12.7 MB (12722095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3126f10944c7de2a3a89e202a96225a4512dda6fcbc3eb74fe5388e45d4e565`  
		Last Modified: Thu, 21 Apr 2022 06:51:45 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fa1b56bdba1a5d0ac4915bfa58703e1b0e0128b200ea85d592d2561a44eb5`  
		Last Modified: Thu, 21 Apr 2022 06:58:37 GMT  
		Size: 22.0 MB (22023992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fa3e78c81550c7c7d881db6b7aa8cba1c9fa7716eb50852f0edd10df40e64`  
		Last Modified: Thu, 21 Apr 2022 06:58:34 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d172bbc5f2faf27b63b74373540623bb2576683dfc8433cc6bb7cdcc8c96d078`  
		Last Modified: Tue, 09 Aug 2022 18:14:21 GMT  
		Size: 22.8 MB (22789662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f6f561bfd9610545b0f55813b7efb9511a0d64507c75a53e672144c7789fc4`  
		Last Modified: Tue, 09 Aug 2022 18:14:15 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ffbb94c3bd7749ff42587793c892c75153b89e8fc94a045f01628fa8480b9c`  
		Last Modified: Tue, 09 Aug 2022 18:14:15 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac557e1ceb890eda2b5c9785d3eccef19168608eee42cf05935480826775bef6`  
		Last Modified: Tue, 09 Aug 2022 18:14:15 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14-debian-1` - linux; s390x

```console
$ docker pull fluentd@sha256:ae68991ef5419cd38e4e041a7fcb837bfa35c2d94795ac9a30e5e017451c9ab6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80543577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380743889e72ab99d534aef82cfb8ee9e76c46d9eb9733072b74b3062c77b691`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 08:40:41 GMT
ADD file:e9840ab2ce3aeff61b68bf4837f65471a86dcba02c5023863f3e7493098b07ba in / 
# Wed, 20 Apr 2022 08:40:45 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 18:18:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 18:18:37 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 18:18:37 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 19:12:42 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 19:12:43 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 19:12:44 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 19:16:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 19:16:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 19:16:04 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 19:16:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 19:16:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 19:16:06 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 13:20:46 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 13:20:47 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 13:20:47 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 13:23:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 13:23:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 13:23:10 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 13:23:11 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 13:23:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 13:23:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 13:23:13 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 13:23:14 GMT
USER fluent
# Thu, 21 Apr 2022 13:23:15 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 13:23:15 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b59fdcf2cb29d2ee4dd08aa08a467372e33525431c4caba9b01e9eb28f76425f`  
		Last Modified: Wed, 20 Apr 2022 08:50:14 GMT  
		Size: 25.8 MB (25758600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9f9c47487b180bf1fddc06918ef1b690d1c893533f21d2767110c45626351f`  
		Last Modified: Wed, 20 Apr 2022 19:21:32 GMT  
		Size: 10.8 MB (10821134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca0be762d292fcd2dc5a0a5b3e49cfd491b26e59df287d2bd8258cfa6f59d35`  
		Last Modified: Wed, 20 Apr 2022 19:21:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dd3c06ffbbb80805ce3dd53eaf65b0041775c8e91de37fb2ab1da5f01e163`  
		Last Modified: Wed, 20 Apr 2022 19:26:27 GMT  
		Size: 21.6 MB (21645401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bae8ba38366b84275670645a261259d82989486a2d5fdfd8069321051520f5`  
		Last Modified: Wed, 20 Apr 2022 19:26:25 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2eb04d51301a44c2f2bf64e29badff46bc39e20fc5e4b8f31255647ae1f00c9`  
		Last Modified: Thu, 21 Apr 2022 13:24:02 GMT  
		Size: 22.3 MB (22315353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e276f817273d953a7f43f8e1dabeb018bd2999df36f1fcd6e218e005bf02c9`  
		Last Modified: Thu, 21 Apr 2022 13:23:59 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0f5549c6a85eebe6fb847efd2af3e725b3c96c8b715bbc66a3504c06a863e`  
		Last Modified: Thu, 21 Apr 2022 13:23:59 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510862c3eeb2ddf510e371649d708941a578db3fa3effc8cf60e8fd88a0bef31`  
		Last Modified: Thu, 21 Apr 2022 13:23:59 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.14.0-1.0`

```console
$ docker pull fluentd@sha256:14a6dabafd296f9601f69d2b000de270a457779e466ae735feef62d47f9c4bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.14.0-1.0` - linux; amd64

```console
$ docker pull fluentd@sha256:0df9599d013815bc02c8046b1df6e8137bef905fd5d4d15612ef4c7506528af0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20382342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bb541bfc9908f21cb0dd96aaaacb54d846895aecd4b03c4a16707d4f4f13e4`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:14 GMT
ADD file:7fd90c097e2c4587dee91726d71abc02fa1aa6a3a3395c862206a4e14e0c299c in / 
# Tue, 09 Aug 2022 17:20:14 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 21:15:14 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 21:15:14 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 21:15:59 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 21:16:00 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 21:16:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 21:16:00 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 21:16:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 21:16:01 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 21:16:01 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 21:16:01 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 21:16:01 GMT
USER fluent
# Thu, 06 Oct 2022 21:16:01 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 21:16:01 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:72cfd02ff4d01b1f319eed108b53120dea0185b916d2abeb4e6121879cbf7a65`  
		Last Modified: Tue, 09 Aug 2022 17:21:16 GMT  
		Size: 2.8 MB (2827571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9fa3e4dcfc088d46409de9b0d40c5fc4940e4c7a6975ef269dd6a7e8a6a6a`  
		Last Modified: Thu, 06 Oct 2022 21:16:26 GMT  
		Size: 17.6 MB (17552569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f7bec4ded6c3da9e4647897ca5b68a1c7d8e70bcfd0442325778e2753addd2`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7caecdf56fe6b18386ddd1f5b3f445e694b76d8c72ffea129afc0f645c4692`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12cecf5130357297a55cad85eb73b9c571a0d6d42377e70e805ff8fd7e29adb7`  
		Last Modified: Thu, 06 Oct 2022 21:16:23 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-1.0` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:5d8e0def7f349678f6fa13644b9b97c8026f85f510d0bd62ffd972b06d9b76a9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19575117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76ff280687e4ca6aa10d2b5ff427f882a3ec9c64397c749d6af70ac7eeac291`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:51 GMT
ADD file:541b767b21b9e0c4dab118d5e000990da3dbb81b547c1ee9941e2cf7edc5edd6 in / 
# Thu, 10 Nov 2022 20:49:51 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:43:50 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 10 Nov 2022 21:43:50 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 10 Nov 2022 21:44:57 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 10 Nov 2022 21:44:59 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 10 Nov 2022 21:45:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 10 Nov 2022 21:45:00 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 10 Nov 2022 21:45:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 10 Nov 2022 21:45:01 GMT
ENV LD_PRELOAD=
# Thu, 10 Nov 2022 21:45:02 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 10 Nov 2022 21:45:02 GMT
EXPOSE 24224 5140
# Thu, 10 Nov 2022 21:45:02 GMT
USER fluent
# Thu, 10 Nov 2022 21:45:03 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 10 Nov 2022 21:45:03 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b423ab447fbb66b194458908339addbb5dd52e4aa7d04a42b387cdc07bbd92a1`  
		Last Modified: Tue, 09 Aug 2022 17:51:16 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ce41543c897f9e4a351ee99978feaf87bd0f5b16fdafe2e65186f551cca6ec`  
		Last Modified: Thu, 10 Nov 2022 21:45:33 GMT  
		Size: 16.9 MB (16939425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83df6ded56cc58cccffc3579cfd5c93d6d50dcb87f5a1f50a964fe42dad9e48c`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9342de74acf84bc9293468f12b3f5f0b3896e1a5024e190cca177a1ca39b207`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9613ad7445852f4dd6032e06267233a18ecfcca00c7eb77a3f4968cf2ad5933a`  
		Last Modified: Thu, 10 Nov 2022 21:45:29 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-1.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:f0a2b35718ed6aeb5dfa63f71fe1bb4c9536ff0716723c1381ed15a43397ae1f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20183367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0cb924fbdb3d9747d5621b71908001ddf98333f879af3ebbfeef93d699f2677`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:56 GMT
ADD file:f23c059b4312458fbf0fc018d4695f36157a3eb6e5a83167912a39f9a738f4eb in / 
# Thu, 10 Nov 2022 20:39:56 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:41:33 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 10 Nov 2022 21:41:33 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 10 Nov 2022 21:42:11 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 10 Nov 2022 21:42:12 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 10 Nov 2022 21:42:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 10 Nov 2022 21:42:12 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 10 Nov 2022 21:42:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 10 Nov 2022 21:42:12 GMT
ENV LD_PRELOAD=
# Thu, 10 Nov 2022 21:42:12 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 10 Nov 2022 21:42:12 GMT
EXPOSE 24224 5140
# Thu, 10 Nov 2022 21:42:12 GMT
USER fluent
# Thu, 10 Nov 2022 21:42:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 10 Nov 2022 21:42:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:25f523f0e93b2b5fa676c15d91b90f08ee4de7a160874e6c52ea452929d5a7cc`  
		Last Modified: Tue, 09 Aug 2022 17:41:17 GMT  
		Size: 2.7 MB (2722126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943400719ecc8dd281506bcfbeacdfe71001445486b5dca2cee2337f5b22d0c2`  
		Last Modified: Thu, 10 Nov 2022 21:44:00 GMT  
		Size: 17.5 MB (17459038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a24bdbe56f1da427c4e69fc430a098c16ab68b5ea63a248877090fc9e89984`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74291d8e80b8d1091254b1ac1e9106904ba335d7be86b101ae92b1941ad30f20`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b5bf292ba846aa42a8ba9878c9fb4012c5c220de02c9ee04dff2046f263046`  
		Last Modified: Thu, 10 Nov 2022 21:43:57 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-1.0` - linux; 386

```console
$ docker pull fluentd@sha256:c0995715a992f1d0a79366ea32a9e96048f422a9bc1a9293fae90ccee1d598dc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19837484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b46697e0f7c6af78ba4a7293e7408f6688ced8b4da0b47b283758d93cefd84`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:39:01 GMT
ADD file:03626e5c8651aac4c8e12fa9ad40c1ed5c1cf728846275ccb6a154d33f64567e in / 
# Tue, 09 Aug 2022 17:39:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:00:58 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:00:59 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:01:47 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:01:47 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:01:49 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:01:50 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:01:50 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:01:51 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:01:52 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:01:53 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:01:54 GMT
USER fluent
# Thu, 06 Oct 2022 20:01:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:01:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bb0cde90e12d5206d6293dc0d9e482ef617f00aa0d4286810adb0700c188ede4`  
		Last Modified: Tue, 09 Aug 2022 17:40:12 GMT  
		Size: 2.8 MB (2829774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435f51fe2d4d59d818e12438561807021fad7ced07b1780a7d47df00670a9797`  
		Last Modified: Thu, 06 Oct 2022 20:02:29 GMT  
		Size: 17.0 MB (17005555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915246a0dddfd636c891698cb4446182a25e8c4921388019488dc3c0844f202f`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c91e38ddf730a3fffc05556726d56625590e26ee10c0eff00cfbf65c8b8942b`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2efbde096e960371980d58a9df5b1a527ef22ba54b3c0542c491cb48b6a053`  
		Last Modified: Thu, 06 Oct 2022 20:02:27 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-1.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:fa629c265dbdb5d8807f13fdc5f66cc0c192ae6daff666447a9192c2f50b30f7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.4 MB (20423388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d62a279499a9175102ccbbd930054f6269d0f5f7cb95cd0222eb1178cc42ba`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:17:40 GMT
ADD file:484b4a940601ea0eee86b54ed0bbab522d82063504d5e404297522cec2da2410 in / 
# Tue, 09 Aug 2022 17:17:41 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:23:23 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:23:23 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:24:50 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:24:53 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:24:53 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:24:53 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:24:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:24:54 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:24:54 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:24:54 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:24:55 GMT
USER fluent
# Thu, 06 Oct 2022 20:24:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:24:55 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:92709067783fb8dba06b304866998cd7cbe11f3ceaaf90c0c74832e1d007c1f7`  
		Last Modified: Tue, 09 Aug 2022 17:19:09 GMT  
		Size: 2.8 MB (2818026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c076900adce70b7c3d31c631d52677dfc674e6d136423ed13e365bfea0d9bb45`  
		Last Modified: Thu, 06 Oct 2022 20:25:26 GMT  
		Size: 17.6 MB (17603156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffd94570f6e1867831f4ad21939b2b03a9ce2c5dfa4df81afbe8e50358dbc5f`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7042d0234b589dfe0b2277327f7196d75b99509a3bfce6ca685e1f389b1f213`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ec0f74ee2d2468c4ae957e6e2e4380bfcda95647dbc0371c3a5674b8f1c4a4`  
		Last Modified: Thu, 06 Oct 2022 20:25:22 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-1.0` - linux; s390x

```console
$ docker pull fluentd@sha256:38e3ac8795f550e9cd74e0bea4f265e1512ab73f2f5863a40c17df111eacb4bd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.1 MB (20111138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941af3b15377f7deac6df91d21b6276ab09eb1580f0b205e8a747d3b61e64cc7`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Aug 2022 17:42:10 GMT
ADD file:a30f78876e4c7fee29ec287fe4b4f48621431512b0e81289b1fe23b3d6f7660f in / 
# Tue, 09 Aug 2022 17:42:11 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:13:57 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 06 Oct 2022 20:13:57 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 06 Oct 2022 20:14:49 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base linux-headers         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && gem install bigdecimal -v 1.4.4  && gem install resolv -v 0.2.1  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 06 Oct 2022 20:14:53 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 06 Oct 2022 20:14:53 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 06 Oct 2022 20:14:54 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 06 Oct 2022 20:14:54 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 06 Oct 2022 20:14:54 GMT
ENV LD_PRELOAD=
# Thu, 06 Oct 2022 20:14:55 GMT
ENV RUBYLIB=/usr/lib/ruby/gems/2.7.0/gems/resolv-0.2.1/lib
# Thu, 06 Oct 2022 20:14:55 GMT
EXPOSE 24224 5140
# Thu, 06 Oct 2022 20:14:55 GMT
USER fluent
# Thu, 06 Oct 2022 20:14:56 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 06 Oct 2022 20:14:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:43943356f3daa5170be0f37f440cbf412003a7271fe424841157976e33a9c418`  
		Last Modified: Tue, 09 Aug 2022 17:43:11 GMT  
		Size: 2.6 MB (2611905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5015e62a78e137f2546a685f007cd80f1b40e36b32f07f70460de9b34cb8299b`  
		Last Modified: Thu, 06 Oct 2022 20:15:28 GMT  
		Size: 17.5 MB (17497028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612ebf9a1dc75ed065627005f79454b15c360ee25e2fe7f7d89a159382139429`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7b59afb6820499bac99374fbb145b826fb96afce0e96fcfb58048e68fd92a2`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bcee240616bf9c95b1afd44ff91c1cde29f4575f9098de676042c61111898`  
		Last Modified: Thu, 06 Oct 2022 20:15:26 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.14.0-debian-1.0`

```console
$ docker pull fluentd@sha256:774066c3ce2adcf367d90e76d854240263ac52d6b4add37199b5c5f210f42079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.14.0-debian-1.0` - linux; amd64

```console
$ docker pull fluentd@sha256:31f856da4366b21eb65eb1606b626b9009649f52ca43126a2533622e2529c8d4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83344003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff043dd33e5716f51bf4ab2b99e677b3e9ce240040a876473f536a5d82580fb7`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 04:43:48 GMT
ADD file:011a43ee23214c201afb7f3b5be592f374b89a4c71aea82ca66146bbbc31b959 in / 
# Wed, 20 Apr 2022 04:43:48 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 13:53:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 13:53:29 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 13:53:29 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 14:26:43 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 14:26:43 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 14:26:44 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 14:28:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 14:28:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 14:28:38 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 14:28:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 14:28:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 14:28:39 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 11:23:52 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 11:23:52 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 11:23:52 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 11:25:10 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 11:25:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 11:25:11 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 11:25:11 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 11:25:11 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 11:25:11 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 11:25:11 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 11:25:12 GMT
USER fluent
# Thu, 21 Apr 2022 11:25:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 11:25:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:4be315f6562fccf08fd6c749557e31e45ab6d987370e20e2c4933ddb04ddd5ff`  
		Last Modified: Wed, 20 Apr 2022 04:49:15 GMT  
		Size: 27.1 MB (27140664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1deab5c467752dc1ff271d1926326e23b8a5ee00a4ba0498ecc56a5e1487ef`  
		Last Modified: Wed, 20 Apr 2022 14:31:32 GMT  
		Size: 12.6 MB (12575227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ec9d073812451287ed13e111307c9386052b3a1166ff05bcb1b0408d41578b`  
		Last Modified: Wed, 20 Apr 2022 14:31:29 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b424a674e27ad5769a255ca3eddff5a17b43fb7d48a1885b419ad1c0c200f036`  
		Last Modified: Wed, 20 Apr 2022 14:36:28 GMT  
		Size: 21.5 MB (21499847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16233d272929239efa9ed12b6172584706453fdbbb783d198c2ac66f6af904f`  
		Last Modified: Wed, 20 Apr 2022 14:36:26 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428b5255ca73b2b0149d2d46d32a00955769990664c25ffbbc6eb5da3a56b544`  
		Last Modified: Thu, 21 Apr 2022 11:25:28 GMT  
		Size: 22.1 MB (22125180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50568e080010417eb887e7e4fb346638cd8c14d89521bf180b81cdf348f76b3`  
		Last Modified: Thu, 21 Apr 2022 11:25:24 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722ad09eaafb3109b04e8e25199a744e2cacb3fdd1e161ea137a4d55e97a1ff`  
		Last Modified: Thu, 21 Apr 2022 11:25:24 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c121ef8440dda93bd91856f7f735402e6bf6ca253f6a3ee6eba9f35381760dd`  
		Last Modified: Thu, 21 Apr 2022 11:25:24 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-debian-1.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:2d2de675b002f4a0cace50a8459f0b38ad45de9a17b1dc62c09e99890d8f361b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77283802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7c5e7a25cc9074f8b7e309a3965f51e34efc2e78cf85563488efd7351eab96`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 07:17:47 GMT
ADD file:5b740716d202d2f3494df5e108c0ba999125920ed9c97803fe0ccdfeba5cf518 in / 
# Wed, 20 Apr 2022 07:17:48 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 21:22:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 21:22:24 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 22:38:56 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 22:38:56 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 22:38:56 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 22:43:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 22:43:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 22:43:29 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 22:43:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 22:43:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 22:43:31 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 16:36:42 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 16:36:43 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 16:36:43 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 16:40:17 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 16:40:19 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 16:40:19 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 16:40:20 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 16:40:20 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 16:40:21 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 16:40:21 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 16:40:21 GMT
USER fluent
# Thu, 21 Apr 2022 16:40:22 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 16:40:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:1fc8704cfa531d4583c5d4d571b836a82c02a812dae88792c4397cf1c1770405`  
		Last Modified: Wed, 20 Apr 2022 07:33:54 GMT  
		Size: 24.9 MB (24889592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fa4f5186cdac36b883349f2a4c873674b796d97d8205016f21caffcc03559e`  
		Last Modified: Wed, 20 Apr 2022 22:50:57 GMT  
		Size: 10.4 MB (10355807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0d10b4fa5ade38a8ac4858b320fe9a2a7117fd461efe20047339ac801689f9`  
		Last Modified: Wed, 20 Apr 2022 22:50:52 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7457a099763babee2e33ef7dc834e6ae9c8a42a3c3dc69b2326d7a2a347df12`  
		Last Modified: Wed, 20 Apr 2022 22:58:28 GMT  
		Size: 20.8 MB (20762082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f160c58984b69c2363d7f91c47ec0a2250928fadf658dbab07763ffb32ddfc`  
		Last Modified: Wed, 20 Apr 2022 22:58:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb3e414f2867bd9085b895455c7e6bb00231ae0616f4d43973fd6879a58855f`  
		Last Modified: Thu, 21 Apr 2022 16:40:56 GMT  
		Size: 21.3 MB (21273245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209776582075367a450a96d4ba3d85649e97863d39e5bc11155658be90937ad6`  
		Last Modified: Thu, 21 Apr 2022 16:40:43 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e2a691d318b62fe73409618facb3796cb39d0d6dcbc9c7b3cb17851dd874a6`  
		Last Modified: Thu, 21 Apr 2022 16:40:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bbc9667cc25f0168adbcb111c9b44e58d619bd707e96f74e8d327f6a303582`  
		Last Modified: Thu, 21 Apr 2022 16:40:43 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-debian-1.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:17b49a9814058c4e6f5293452eec695e2f94f6eb871427b4d4c69921530c4e07
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74455776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e56d2c4316c3e92ce005758c65cba4a16ba0be1799ef389b7c03209afd2b07`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 13:28:26 GMT
ADD file:2a755b6e7bf01ec959b8bb848b6d46f292821a0bf08e04d565991ec4bdbea029 in / 
# Wed, 20 Apr 2022 13:28:27 GMT
CMD ["bash"]
# Thu, 21 Apr 2022 12:05:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 21 Apr 2022 12:05:45 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 21 Apr 2022 12:05:45 GMT
ENV LANG=C.UTF-8
# Thu, 21 Apr 2022 13:18:31 GMT
ENV RUBY_MAJOR=2.6
# Thu, 21 Apr 2022 13:18:31 GMT
ENV RUBY_VERSION=2.6.10
# Thu, 21 Apr 2022 13:18:32 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Thu, 21 Apr 2022 13:22:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Thu, 21 Apr 2022 13:22:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 21 Apr 2022 13:22:59 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 21 Apr 2022 13:23:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Apr 2022 13:23:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 21 Apr 2022 13:23:02 GMT
CMD ["irb"]
# Fri, 22 Apr 2022 13:55:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 22 Apr 2022 13:55:10 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Fri, 22 Apr 2022 13:55:11 GMT
ENV TINI_VERSION=0.18.0
# Fri, 22 Apr 2022 13:58:29 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Fri, 22 Apr 2022 13:58:31 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 22 Apr 2022 13:58:32 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 22 Apr 2022 13:58:32 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Fri, 22 Apr 2022 13:58:32 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 22 Apr 2022 13:58:33 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Fri, 22 Apr 2022 13:58:33 GMT
EXPOSE 24224 5140
# Fri, 22 Apr 2022 13:58:34 GMT
USER fluent
# Fri, 22 Apr 2022 13:58:34 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 22 Apr 2022 13:58:35 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:88467ac22b4358b1b60009f6332ba9e12b7a82a36bef334d91d68dbf8b58d96f`  
		Last Modified: Wed, 20 Apr 2022 13:45:04 GMT  
		Size: 22.7 MB (22747865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f5df018d1b3798d92c483f743680f2a75bffcdb2fdc65e25e7f953eb8a87f0`  
		Last Modified: Thu, 21 Apr 2022 13:33:13 GMT  
		Size: 9.9 MB (9874505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b38d238f3ca5becba32e5047390d0bcb058b996a68f108e08405859ca418d3`  
		Last Modified: Thu, 21 Apr 2022 13:33:06 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b083e63acb6d37e235be7c512b6ce8f65effa74e2ad3b40902550644332402`  
		Last Modified: Thu, 21 Apr 2022 13:42:10 GMT  
		Size: 20.7 MB (20671986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5dd4f4577d330035372d074d2ba00829867a46ad7c0c1ac84f0daf72bb70a`  
		Last Modified: Thu, 21 Apr 2022 13:42:01 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525b5e78ab93f35dec23e4e56c8587d5f0ff20410936c86203c85122bfc60fee`  
		Last Modified: Fri, 22 Apr 2022 13:59:10 GMT  
		Size: 21.2 MB (21158341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d888f0e289fbac36f7926a5678c6ea0ca621ae84a9047bed2d205a4827914fe0`  
		Last Modified: Fri, 22 Apr 2022 13:58:57 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ce9b363c31436572bbf5e81facae988a3e563fe6d5148408a5d95732bf0ffa`  
		Last Modified: Fri, 22 Apr 2022 13:58:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0bd4243746d54f1005f0ccc08571a3237bb49b941e1805baccbd7ac5fdaa63`  
		Last Modified: Fri, 22 Apr 2022 13:58:57 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-debian-1.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:c2595853422ba0ba6b596ff804c7459659373fadc87a7d7e435ac17529539b04
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80239158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ea7f7d3e1b2b7242044df00d890930aaf9b99445880d0f2f81dc094a58d54e`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 04:29:36 GMT
ADD file:5de4397c1295f7249c93907be599d96efbd9cd25909340d245ec8d1c9770f444 in / 
# Wed, 20 Apr 2022 04:29:37 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 12:29:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 12:29:07 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 12:29:07 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 13:03:06 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 13:03:07 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 13:03:08 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 13:04:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 13:04:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 13:04:55 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 13:04:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 13:04:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 13:04:58 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 10:45:20 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 10:45:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 10:45:22 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 10:47:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 10:47:05 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 10:47:07 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 10:47:08 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 10:47:08 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 10:47:09 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 10:47:10 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 10:47:11 GMT
USER fluent
# Thu, 21 Apr 2022 10:47:12 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 10:47:13 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6c3e5b218d6477ff77053280968d5bdeaa5dcf16a803e917d98dd0ea8b93ac82`  
		Last Modified: Wed, 20 Apr 2022 04:36:38 GMT  
		Size: 25.9 MB (25908349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77bf0e4ce7a30a322abda93e53b03cb918a055a6ed81e9fd64af6b89ca12f11`  
		Last Modified: Wed, 20 Apr 2022 13:09:31 GMT  
		Size: 11.3 MB (11274388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b549c099b7e79348caf083f065440e3a949b9804c1d7f0d928e46147a6d28a5`  
		Last Modified: Wed, 20 Apr 2022 13:09:29 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d03afd9dd9c30f1ee2fa331c106e94f3da7970be3730cc649461527e052ae7`  
		Last Modified: Wed, 20 Apr 2022 13:15:25 GMT  
		Size: 21.1 MB (21124502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a64fb3b7fff1da65681b4e2a40048db115daec40bdd81ef0f97c070f3838f`  
		Last Modified: Wed, 20 Apr 2022 13:15:23 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a3185549ed1865b94c03fc40dd408d0be0b2ca684476c545e491e9cb644f30`  
		Last Modified: Thu, 21 Apr 2022 10:47:50 GMT  
		Size: 21.9 MB (21929010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd0f3e3fd2a18f389ad6d4609fa9245abe3f01f5135960c850893d0ed8d8139`  
		Last Modified: Thu, 21 Apr 2022 10:47:46 GMT  
		Size: 1.7 KB (1700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b348cd8f8abd9ce1b8a42fd35b7fac0e805738906a2b7beb82c60191c51ff7c`  
		Last Modified: Thu, 21 Apr 2022 10:47:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4b65907a160901d531264b65ff47d2a3ca1ff5128983dbf19152c4147519cf`  
		Last Modified: Thu, 21 Apr 2022 10:47:46 GMT  
		Size: 461.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-debian-1.0` - linux; 386

```console
$ docker pull fluentd@sha256:ff1fc17bde6eab813abe059f97ec396276fab44bd1f5c872ab33df32c1b2e0c1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86868131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b4b0907e94acc3a1541cea481eda892db50ebf7fbe4bea7b0ddf3b4019c2ec`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 07:38:03 GMT
ADD file:602a25173054242f635a5a299845b7f1b56864ac5d3b8af1ae29dec3a9da119f in / 
# Wed, 20 Apr 2022 07:38:04 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 16:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 16:29:16 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 16:29:17 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 17:03:49 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 17:03:49 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 17:03:50 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 17:05:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 17:05:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 17:05:39 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 17:05:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 17:05:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 17:05:42 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 01:39:09 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 01:39:10 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 01:39:11 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 01:40:30 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 01:40:31 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 01:40:33 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 01:40:34 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 01:40:34 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 01:40:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 01:40:36 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 01:40:37 GMT
USER fluent
# Thu, 21 Apr 2022 01:40:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 01:40:39 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a13b13d818745c4d2234aab71df26e4a01bfe59f396ab62f20d156b94803650c`  
		Last Modified: Wed, 20 Apr 2022 07:45:46 GMT  
		Size: 27.8 MB (27799825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8adf63751cdcda285c6be0ce9703ea1d9a81d8a65fe1cc6b43a7aa4ac0d2c16`  
		Last Modified: Wed, 20 Apr 2022 17:11:08 GMT  
		Size: 17.2 MB (17232751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6abfc79ff6d122a3d9fe8305741b72a52a369ba65026a0f7e4b8e3796cbadb`  
		Last Modified: Wed, 20 Apr 2022 17:11:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84c30f0af95dcc4f8fdad5045acfa08b2b1cde3c7080fc71b23a4faca574e3c`  
		Last Modified: Wed, 20 Apr 2022 17:17:30 GMT  
		Size: 20.7 MB (20730306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55b718ab274a71879178596ff2d16a57c21c6cdeb17d8db750a38303745d092`  
		Last Modified: Wed, 20 Apr 2022 17:17:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efff0c8f44f3dea83268b7b2a6cf09b0642d5d17525c59ba26a9f7a9d50d3629`  
		Last Modified: Thu, 21 Apr 2022 01:41:09 GMT  
		Size: 21.1 MB (21102350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5cacd5fdd65f46d410a9810e65aea693a8accacdc6d09c76800dcf7045b44`  
		Last Modified: Thu, 21 Apr 2022 01:41:06 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fddd5f6b631698e185a61fcaff3794beb20af0e4936dbc182abef7ffa5a02db2`  
		Last Modified: Thu, 21 Apr 2022 01:41:06 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9fbfcd7aeb3bc63bc82946a3214c6ac6c58a7692ffa424b7f91ba962f870e0`  
		Last Modified: Thu, 21 Apr 2022 01:41:06 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-debian-1.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:bf74d13b29f4f7ba6fb964181f9d714fc7cce0848dea1633023ca9b1079e17d5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.1 MB (88099134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43f7af6b762b0ab6d02b24a021baccfaab8e4158e53d52ef546ee390238788d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 09:47:47 GMT
ADD file:69078e7ae6d887f7e36ae048f98f784678fbd8b7a8ec27e3c2bce0d68a47236d in / 
# Wed, 20 Apr 2022 09:47:51 GMT
CMD ["bash"]
# Thu, 21 Apr 2022 04:51:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 21 Apr 2022 04:51:22 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 21 Apr 2022 04:51:25 GMT
ENV LANG=C.UTF-8
# Thu, 21 Apr 2022 06:36:23 GMT
ENV RUBY_MAJOR=2.6
# Thu, 21 Apr 2022 06:36:26 GMT
ENV RUBY_VERSION=2.6.10
# Thu, 21 Apr 2022 06:36:29 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Thu, 21 Apr 2022 06:45:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Thu, 21 Apr 2022 06:45:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 21 Apr 2022 06:45:48 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 21 Apr 2022 06:45:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Apr 2022 06:46:04 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 21 Apr 2022 06:46:07 GMT
CMD ["irb"]
# Tue, 09 Aug 2022 18:10:40 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Tue, 09 Aug 2022 18:10:40 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Tue, 09 Aug 2022 18:10:40 GMT
ENV TINI_VERSION=0.18.0
# Tue, 09 Aug 2022 18:13:24 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Tue, 09 Aug 2022 18:13:26 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Tue, 09 Aug 2022 18:13:26 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Tue, 09 Aug 2022 18:13:27 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Tue, 09 Aug 2022 18:13:27 GMT
ENV FLUENTD_CONF=fluent.conf
# Tue, 09 Aug 2022 18:13:27 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Tue, 09 Aug 2022 18:13:27 GMT
EXPOSE 24224 5140
# Tue, 09 Aug 2022 18:13:28 GMT
USER fluent
# Tue, 09 Aug 2022 18:13:28 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Tue, 09 Aug 2022 18:13:28 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:1aacfa28cbcef999a852ce9c261b67f15f0ccd8450cd1dbfe7b0dc88e6b5aba2`  
		Last Modified: Wed, 20 Apr 2022 09:58:02 GMT  
		Size: 30.6 MB (30560296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43fdaded5bf84bf5c649e118901ddbf5e97ef76eec00d7069aa6734146e1532`  
		Last Modified: Thu, 21 Apr 2022 06:51:48 GMT  
		Size: 12.7 MB (12722095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3126f10944c7de2a3a89e202a96225a4512dda6fcbc3eb74fe5388e45d4e565`  
		Last Modified: Thu, 21 Apr 2022 06:51:45 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6fa1b56bdba1a5d0ac4915bfa58703e1b0e0128b200ea85d592d2561a44eb5`  
		Last Modified: Thu, 21 Apr 2022 06:58:37 GMT  
		Size: 22.0 MB (22023992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241fa3e78c81550c7c7d881db6b7aa8cba1c9fa7716eb50852f0edd10df40e64`  
		Last Modified: Thu, 21 Apr 2022 06:58:34 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d172bbc5f2faf27b63b74373540623bb2576683dfc8433cc6bb7cdcc8c96d078`  
		Last Modified: Tue, 09 Aug 2022 18:14:21 GMT  
		Size: 22.8 MB (22789662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f6f561bfd9610545b0f55813b7efb9511a0d64507c75a53e672144c7789fc4`  
		Last Modified: Tue, 09 Aug 2022 18:14:15 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ffbb94c3bd7749ff42587793c892c75153b89e8fc94a045f01628fa8480b9c`  
		Last Modified: Tue, 09 Aug 2022 18:14:15 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac557e1ceb890eda2b5c9785d3eccef19168608eee42cf05935480826775bef6`  
		Last Modified: Tue, 09 Aug 2022 18:14:15 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.14.0-debian-1.0` - linux; s390x

```console
$ docker pull fluentd@sha256:ae68991ef5419cd38e4e041a7fcb837bfa35c2d94795ac9a30e5e017451c9ab6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80543577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380743889e72ab99d534aef82cfb8ee9e76c46d9eb9733072b74b3062c77b691`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 20 Apr 2022 08:40:41 GMT
ADD file:e9840ab2ce3aeff61b68bf4837f65471a86dcba02c5023863f3e7493098b07ba in / 
# Wed, 20 Apr 2022 08:40:45 GMT
CMD ["bash"]
# Wed, 20 Apr 2022 18:18:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Apr 2022 18:18:37 GMT
RUN set -eux; 	mkdir -p /usr/local/etc; 	{ 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 20 Apr 2022 18:18:37 GMT
ENV LANG=C.UTF-8
# Wed, 20 Apr 2022 19:12:42 GMT
ENV RUBY_MAJOR=2.6
# Wed, 20 Apr 2022 19:12:43 GMT
ENV RUBY_VERSION=2.6.10
# Wed, 20 Apr 2022 19:12:44 GMT
ENV RUBY_DOWNLOAD_SHA256=5fd8ded51321b88fdc9c1b4b0eb1b951d2eddbc293865da0151612c2e814c1f2
# Wed, 20 Apr 2022 19:16:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bison 		dpkg-dev 		libgdbm-dev 		ruby 		autoconf 		g++ 		gcc 		libbz2-dev 		libgdbm-compat-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz"; 	echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum --check --strict; 		mkdir -p /usr/src/ruby; 	tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1; 	rm ruby.tar.xz; 		cd /usr/src/ruby; 		{ 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new; 	mv file.c.new file.c; 		autoconf; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	; 	make -j "$(nproc)"; 	make install; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -vE '^/usr/local/lib/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		cd /; 	rm -r /usr/src/ruby; 	if dpkg -l | grep -i ruby; then exit 1; fi; 	[ "$(command -v ruby)" = '/usr/local/bin/ruby' ]; 	ruby --version; 	gem --version; 	bundle --version
# Wed, 20 Apr 2022 19:16:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 20 Apr 2022 19:16:04 GMT
ENV BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 20 Apr 2022 19:16:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Apr 2022 19:16:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 20 Apr 2022 19:16:06 GMT
CMD ["irb"]
# Thu, 21 Apr 2022 13:20:46 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 21 Apr 2022 13:20:47 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.14.0
# Thu, 21 Apr 2022 13:20:47 GMT
ENV TINI_VERSION=0.18.0
# Thu, 21 Apr 2022 13:23:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.10.18  && gem install json -v 2.4.1  && gem install async-http -v 0.54.0  && gem install ext_monitor -v 0.1.2  && gem install fluentd -v 1.14.0  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem /usr/lib/ruby/gems/2.*/gems/fluentd-*/test
# Thu, 21 Apr 2022 13:23:10 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 21 Apr 2022 13:23:10 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 21 Apr 2022 13:23:11 GMT
COPY file:977670d9d298d60208db6e5110a5919bfde19ee7da9c19df693163ecd07caea6 in /bin/ 
# Thu, 21 Apr 2022 13:23:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 21 Apr 2022 13:23:12 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 21 Apr 2022 13:23:13 GMT
EXPOSE 24224 5140
# Thu, 21 Apr 2022 13:23:14 GMT
USER fluent
# Thu, 21 Apr 2022 13:23:15 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 21 Apr 2022 13:23:15 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b59fdcf2cb29d2ee4dd08aa08a467372e33525431c4caba9b01e9eb28f76425f`  
		Last Modified: Wed, 20 Apr 2022 08:50:14 GMT  
		Size: 25.8 MB (25758600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9f9c47487b180bf1fddc06918ef1b690d1c893533f21d2767110c45626351f`  
		Last Modified: Wed, 20 Apr 2022 19:21:32 GMT  
		Size: 10.8 MB (10821134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca0be762d292fcd2dc5a0a5b3e49cfd491b26e59df287d2bd8258cfa6f59d35`  
		Last Modified: Wed, 20 Apr 2022 19:21:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04dd3c06ffbbb80805ce3dd53eaf65b0041775c8e91de37fb2ab1da5f01e163`  
		Last Modified: Wed, 20 Apr 2022 19:26:27 GMT  
		Size: 21.6 MB (21645401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bae8ba38366b84275670645a261259d82989486a2d5fdfd8069321051520f5`  
		Last Modified: Wed, 20 Apr 2022 19:26:25 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2eb04d51301a44c2f2bf64e29badff46bc39e20fc5e4b8f31255647ae1f00c9`  
		Last Modified: Thu, 21 Apr 2022 13:24:02 GMT  
		Size: 22.3 MB (22315353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e276f817273d953a7f43f8e1dabeb018bd2999df36f1fcd6e218e005bf02c9`  
		Last Modified: Thu, 21 Apr 2022 13:23:59 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0f5549c6a85eebe6fb847efd2af3e725b3c96c8b715bbc66a3504c06a863e`  
		Last Modified: Thu, 21 Apr 2022 13:23:59 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510862c3eeb2ddf510e371649d708941a578db3fa3effc8cf60e8fd88a0bef31`  
		Last Modified: Thu, 21 Apr 2022 13:23:59 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
