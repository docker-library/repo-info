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
