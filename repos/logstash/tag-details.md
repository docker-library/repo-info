<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.26`](#logstash81926)
-	[`logstash:9.4.10`](#logstash9410)
-	[`logstash:9.5.7`](#logstash957)

## `logstash:8.19.26`

```console
$ docker pull logstash@sha256:5f80ddd17655b7c9e184729b1850acbf99aec1ee4292563631b42ab261dea193
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.26` - linux; amd64

```console
$ docker pull logstash@sha256:e6256e938108633af74c3af91fab74fb916a1bb89a206b0c6007fd8f694478a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.8 MB (536790714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8956385166d678b33276c61f0d1b2c2b4d7289ae5fe2aa5903ba0682f9437f7f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Wed, 25 Nov 2026 23:46:24 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 25 Nov 2026 23:46:24 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.26-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.26 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
WORKDIR /usr/share/logstash
# Wed, 25 Nov 2026 23:46:56 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:46:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:46:56 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 25 Nov 2026 23:46:56 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 25 Nov 2026 23:46:56 GMT
USER 1000
# Wed, 25 Nov 2026 23:46:56 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 25 Nov 2026 23:46:56 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.26 org.opencontainers.image.version=8.19.26 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-18T21:52:01+00:00 org.opencontainers.image.created=2026-11-18T21:52:01+00:00
# Wed, 25 Nov 2026 23:46:56 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ad89ddd1c9e87424e15397776e3bb3eb2dec9c94f65b483dc8126139391ba0`  
		Last Modified: Wed, 25 Nov 2026 23:47:37 GMT  
		Size: 55.7 MB (55732022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8ac2a08708a7efcfe3f659ed4901c14e915537db138c8dde147c9ce61e2658`  
		Last Modified: Wed, 25 Nov 2026 23:47:34 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98aa4d74413e391b4682204640460bc935e7205b7954ae38f6d204f09691a6c`  
		Last Modified: Wed, 25 Nov 2026 23:47:46 GMT  
		Size: 451.0 MB (450997643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d8ba92613deae9f7eb9c11e22fb485a65b9fd4171b0b7789422bf054eb4932`  
		Last Modified: Wed, 25 Nov 2026 23:47:34 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268667a351220dadeb265a25f13992a2826689e418124b9f6834d71245ecd22b`  
		Last Modified: Wed, 25 Nov 2026 23:47:35 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df50eaea811df5dfbe5d80f5936bb54c869e987d8a1ce49d920de9b8dab3e72e`  
		Last Modified: Wed, 25 Nov 2026 23:47:36 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5eee488f7c592a31bba3302831f91d03a8d14380ad5656b4a958c20d8f420d`  
		Last Modified: Wed, 25 Nov 2026 23:47:37 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c59d152ce610e545100cd117f7b88e78af2c65ca82b0cf564f4ed622a3dcf0`  
		Last Modified: Wed, 25 Nov 2026 23:47:37 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75deef5f39cb6f9aaf1ff5d04a37028bdb555734f185412f7b230cde63128ee`  
		Last Modified: Wed, 25 Nov 2026 23:47:38 GMT  
		Size: 255.2 KB (255187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e27150c29e469e1f6f21040ca09a1c9ae9770d4194563ec9abf0796630ba6ee`  
		Last Modified: Wed, 25 Nov 2026 23:47:38 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8958eb5755b94fea6bc279ae2d6c26d229da3b8ce4a814d04b6b46236e8c0e51`  
		Last Modified: Wed, 25 Nov 2026 23:47:38 GMT  
		Size: 715.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.26` - unknown; unknown

```console
$ docker pull logstash@sha256:62755d8508489d5917d03b99fdf9ee54c5ef9bc6f9540c3b50931098f9a92c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc2aebd174e0f796cf2fbaa5941a063d7395fd4a83f533bca7aef75c2cf195e`

```dockerfile
```

-	Layers:
	-	`sha256:8ce1191f3d7f12638bce6c36ed0b9f4e5505c3650d49ad46d0d7be8d21e4e20a`  
		Last Modified: Wed, 25 Nov 2026 23:47:35 GMT  
		Size: 3.6 MB (3603259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69f2a1c211e0f4d340408240784dbf9bcae8e8d5dc72fc69ac66f5a89d72dd22`  
		Last Modified: Wed, 25 Nov 2026 23:47:34 GMT  
		Size: 35.8 KB (35849 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.26` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:5fa0a15b4338bc74717a1e48a927119734b68bf2bab62a35d9dbbffe18c0fd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.5 MB (536533928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f63b974e53efe1bffd85cb6f1c42d05b2020cfdfc09bbe8244f07f4c630ac5d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Wed, 25 Nov 2026 23:46:08 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 25 Nov 2026 23:46:09 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 25 Nov 2026 23:46:29 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.26-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.26 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
WORKDIR /usr/share/logstash
# Wed, 25 Nov 2026 23:46:30 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:46:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:46:30 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 25 Nov 2026 23:46:30 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 25 Nov 2026 23:46:30 GMT
USER 1000
# Wed, 25 Nov 2026 23:46:30 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 25 Nov 2026 23:46:30 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.26 org.opencontainers.image.version=8.19.26 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-18T21:52:01+00:00 org.opencontainers.image.created=2026-11-18T21:52:01+00:00
# Wed, 25 Nov 2026 23:46:30 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb45895f67f6fd25c8faaa7bbd2aab6b0b03ce056816ef8e3dc6350265f7127`  
		Last Modified: Wed, 25 Nov 2026 23:47:11 GMT  
		Size: 58.0 MB (58007774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3953a78a5c4e133596632d6ad9873ea90672243e230f9902fb7b6118fe8de518`  
		Last Modified: Wed, 25 Nov 2026 23:47:09 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd1f0712b761c55f595af2777296ab6b1a9294a0eada4667dfc909c4c5c2ae4`  
		Last Modified: Wed, 25 Nov 2026 23:47:17 GMT  
		Size: 449.3 MB (449293090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0585054e08a69be4f8478eb5dbfcddece819f5bc47fcae4b5ee8f7b1cd0b57`  
		Last Modified: Wed, 25 Nov 2026 23:47:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef6d56558c8849ce957ed2b936a822d34f97b506037c72423395b20c929bb10`  
		Last Modified: Wed, 25 Nov 2026 23:47:10 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a685116ef6a8c65e500dab0aa7ee423b0ff2a95f445537003173fcc492a2d12c`  
		Last Modified: Wed, 25 Nov 2026 23:47:10 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea59994fdddf8bad58ac04399f514e2ea5cab3c89346915c8d3e06aafc9b967`  
		Last Modified: Wed, 25 Nov 2026 23:47:11 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab1b7ff49df47298e7ce5c757367516b534b1223ac7fa2d67efe76308c7da73`  
		Last Modified: Wed, 25 Nov 2026 23:47:11 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5729d7cd9246f0ede0d657bea7c23386b3da96cd0afb10fd51b779e45147b8fc`  
		Last Modified: Wed, 25 Nov 2026 23:47:12 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308cad0910abc81dde0fa1e8ca84698fa3e6cff6dd72973f75b0c1ce6eaa6640`  
		Last Modified: Wed, 25 Nov 2026 23:47:12 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5db5c8f49d7ac08d5ef4b323aeb7237c4187947bd5b6645d75ea178add55a8`  
		Last Modified: Wed, 25 Nov 2026 23:47:13 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.26` - unknown; unknown

```console
$ docker pull logstash@sha256:a1c8130a961e2fb23cae3b1a5fa369a9b2e9597b770774b06f8b70b1bbc3d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3414aefab7596d0d0f6c4a0ad707ac192eb66cef7e10dd276e43d94b7980a8`

```dockerfile
```

-	Layers:
	-	`sha256:4e18fd2bbd30b0d6a9050846a53b8c52af332f8b2b83b85c21f71e005597c9ce`  
		Last Modified: Wed, 25 Nov 2026 23:47:09 GMT  
		Size: 3.6 MB (3603684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:863db2b8cf014a12e84ee366334cec6e7c845b6dc9d8decd728f5b4ce6a7ef50`  
		Last Modified: Wed, 25 Nov 2026 23:47:09 GMT  
		Size: 36.0 KB (35975 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.10`

```console
$ docker pull logstash@sha256:9e2a9a8b333bb1c8516877a6e7f78595e0d56d513205bc498283af3059468613
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.10` - linux; amd64

```console
$ docker pull logstash@sha256:053d121cf02ea4297ac2e4fc610ef1057640606217e48b25d5498eda66f68d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.0 MB (523963746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed89e06e8b5d8683aac61ed8f1812c50f83a23ea236b302fbf3d3947af516bbf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:46:49 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:46:49 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:46:49 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 25 Nov 2026 23:46:49 GMT
WORKDIR /usr/share
# Wed, 25 Nov 2026 23:46:55 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.10-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.10 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 25 Nov 2026 23:47:47 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 25 Nov 2026 23:47:48 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:47:48 GMT
WORKDIR /usr/share/logstash
# Wed, 25 Nov 2026 23:47:48 GMT
USER 1000
# Wed, 25 Nov 2026 23:47:48 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 25 Nov 2026 23:47:48 GMT
LABEL org.label-schema.build-date=2026-11-18T21:48:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.10 org.opencontainers.image.created=2026-11-18T21:48:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.10 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 25 Nov 2026 23:47:48 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a7ab3bff10c33a42849ec80b7d6d9f6d7aa8de6437889e2f9df45b7b9d68fb`  
		Last Modified: Wed, 25 Nov 2026 23:48:22 GMT  
		Size: 4.8 MB (4757877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dbb752089a2d300e13c92396334225995f65532ad316f429a104517ec50789`  
		Last Modified: Wed, 25 Nov 2026 23:48:30 GMT  
		Size: 478.3 MB (478294208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af64d2bda9b55832c9945176dc3e1afba92e293f2cba9361684342b67cd6014`  
		Last Modified: Wed, 25 Nov 2026 23:48:22 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:480c72ab7d3793f8930c0f9e180f37491e79f82b0e7fa810c8acd23df4adb8bb`  
		Last Modified: Wed, 25 Nov 2026 23:48:22 GMT  
		Size: 255.2 KB (255187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da54d158d397ee1de0289a418e7bc0a724a3fc1d6cba1c632540efa710999e91`  
		Last Modified: Wed, 25 Nov 2026 23:48:23 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bef3f59212d39e57c99c46d2047665524de11b5e6b16d4fda2431695f2a1f80`  
		Last Modified: Wed, 25 Nov 2026 23:48:23 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6f67b6147a24d35970deb2cf37621fba720be250e0606d06a17dff4bfc816b`  
		Last Modified: Wed, 25 Nov 2026 23:48:23 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8160a213afa4bd5bec1ea0280554748bd3410bd9ffb4800431606a6b3d55adcb`  
		Last Modified: Wed, 25 Nov 2026 23:48:24 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10cdc280ba73181c2344fe85f69ef255395224e1f71bace887a1b854ababd6f`  
		Last Modified: Wed, 25 Nov 2026 23:48:25 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.10` - unknown; unknown

```console
$ docker pull logstash@sha256:7c3192af6d430233b496746d900176bc06c71c65474b0884413c4c61185ff293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2117863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d975d571afb31780968680ce7a04e53b71ce34d01d18bc1ddece900979ad1542`

```dockerfile
```

-	Layers:
	-	`sha256:20d10d3460b72e0b0fea7eacc04006b026c29d2eea7c7f3d8f3dbcf67fe824be`  
		Last Modified: Wed, 25 Nov 2026 23:48:22 GMT  
		Size: 2.1 MB (2087652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4c61181d80cbbe61b580db99b26e2fe2cdae6464c2b5b7c86d8a3451cd2e59`  
		Last Modified: Wed, 25 Nov 2026 23:48:22 GMT  
		Size: 30.2 KB (30211 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.10` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:2768c4c8b8fcf764aa0bdc58321eedd42995066941273073e01ef45dde9468f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.3 MB (520294295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761308e7aec98413968d03529baa27f509c1c96df54b172edd3e34365c9b92b6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:45:53 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:45:53 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:45:53 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 25 Nov 2026 23:45:53 GMT
WORKDIR /usr/share
# Wed, 25 Nov 2026 23:45:59 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.10-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.10 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 25 Nov 2026 23:46:50 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:46:51 GMT
WORKDIR /usr/share/logstash
# Wed, 25 Nov 2026 23:46:51 GMT
USER 1000
# Wed, 25 Nov 2026 23:46:51 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 25 Nov 2026 23:46:51 GMT
LABEL org.label-schema.build-date=2026-11-18T21:48:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.10 org.opencontainers.image.created=2026-11-18T21:48:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.10 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 25 Nov 2026 23:46:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eebcd5547f0bbbb1544863ac9b77195b953de5fa266cd9e00378f6634407c0f`  
		Last Modified: Wed, 25 Nov 2026 23:47:30 GMT  
		Size: 4.8 MB (4750240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a93c5b749f28f7fad247550f03bb4b00242a72255e55d4a0b3b72c88c6c04c`  
		Last Modified: Wed, 25 Nov 2026 23:47:38 GMT  
		Size: 476.6 MB (476575170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdb2ba5a25e1fd08cc45ff90df347263010dadee5f1456844f47f631bcf6d9e`  
		Last Modified: Wed, 25 Nov 2026 23:47:30 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991c2086f91f98ef1a4cf2f095238e0ecd4e93cd147b858cc86cba56f1296bc6`  
		Last Modified: Wed, 25 Nov 2026 23:47:30 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d1c30f9449b7f4856c47eb909737f26106cb5ca2365eadeba50c050ddabc32`  
		Last Modified: Wed, 25 Nov 2026 23:47:31 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd824c910de38ce1ae3b1db81cd23991c1eae58c582cf315e99378e58429375a`  
		Last Modified: Wed, 25 Nov 2026 23:47:31 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95be6223461f2235a4b8b8db0eb9cf765690baf42c25870563c7c06bd1f5add`  
		Last Modified: Wed, 25 Nov 2026 23:47:31 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed72812a74de70638c2cbb391a2126015cce793d88a8d03c22da9940228b950`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd94d42a6903a741a0a91b107cca4839d91437b6fb3178d8a4ceb114734a3367`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.10` - unknown; unknown

```console
$ docker pull logstash@sha256:a16b3cd8d31b4acc2b78d5a20f49c225755480c6d40b6e2f3f5c46620594fa7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2116729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b840f78ab2a1e44453a2fe7eee35741cbd59a96b5ef40f06dcb6332f402280`

```dockerfile
```

-	Layers:
	-	`sha256:79a045377061ba4c2f56a21df818a0bf483f7341def23e98fa43d1068285f8db`  
		Last Modified: Wed, 25 Nov 2026 23:47:30 GMT  
		Size: 2.1 MB (2086440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a10ceffda3db2f9aa78ed13ae1e80bf3f6d7a9899d53dc83e32169d98b873db`  
		Last Modified: Wed, 25 Nov 2026 23:47:30 GMT  
		Size: 30.3 KB (30289 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.7`

```console
$ docker pull logstash@sha256:479004c96ae460e041ee4577d28f3eb5880d68c57bd06aadd2ee100447252f7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.7` - linux; amd64

```console
$ docker pull logstash@sha256:e50b4394c6dbc1d094fe93c667a7aa9c406bc715e05b1ca6ebce500dda5ec518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.7 MB (532696960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11679c1dcc46b8b39afe567f7164697fe0d242c05f0e0d2ff8da74887ff9ba2c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:48:02 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:48:02 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:48:02 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 25 Nov 2026 23:48:02 GMT
WORKDIR /usr/share
# Wed, 25 Nov 2026 23:48:05 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:48:38 GMT
WORKDIR /usr/share/logstash
# Wed, 25 Nov 2026 23:48:38 GMT
USER 1000
# Wed, 25 Nov 2026 23:48:38 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 25 Nov 2026 23:48:38 GMT
LABEL org.label-schema.build-date=2026-11-18T21:48:49+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.7 org.opencontainers.image.created=2026-11-18T21:48:49+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 25 Nov 2026 23:48:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c483ec996b04bebe022f8b008dd9a5c58e0d5316440d94742fbd74538ef40da`  
		Last Modified: Wed, 25 Nov 2026 23:49:13 GMT  
		Size: 4.8 MB (4757879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b03ef143946425b3c8ba14df7e5e95edbe92d6d4d376f70346b534cfce25d7`  
		Last Modified: Wed, 25 Nov 2026 23:49:23 GMT  
		Size: 487.0 MB (487027251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fb4ca1ebf19f817246c770e0858405d0a5914be3dfe499c176b86f6e12d879`  
		Last Modified: Wed, 25 Nov 2026 23:49:13 GMT  
		Size: 6.5 KB (6540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb0a0d38534d48d4325139950f8f572a1c508aadfe2636089fc19d371d96bfc`  
		Last Modified: Wed, 25 Nov 2026 23:49:13 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6352effbbbfc192dadacce502d6c471b250e84d7841c515e1e042fcac6bfec`  
		Last Modified: Wed, 25 Nov 2026 23:49:14 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491a5280577801620eca8555a56cfdaff018b14f2efffaa78ae31c51593a6efa`  
		Last Modified: Wed, 25 Nov 2026 23:49:14 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64151ae9c65278388b72bbfbf0820ec3c531be12db56e2f50976383751710f95`  
		Last Modified: Wed, 25 Nov 2026 23:49:15 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc69112b29aec327d90b751ac68e1f7a4d79d43a69dea55d9e64817536f8ae04`  
		Last Modified: Wed, 25 Nov 2026 23:49:16 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9141f7d9979def200651e9722ab55a173e2ab218ad7ad7c6a37c431a3117d122`  
		Last Modified: Wed, 25 Nov 2026 23:49:16 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.7` - unknown; unknown

```console
$ docker pull logstash@sha256:8f609ef992dfa505421e401d44edc31fb6c3513d088135db36d9ca5158892a7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd1b49390636f785b97ed94fd24a1cee99b51672344fe5afb485ab6842aeff3`

```dockerfile
```

-	Layers:
	-	`sha256:26e6e2064fc32c113b8a4934eeedd27e2179c749367a8227a169275b81bb06a5`  
		Last Modified: Wed, 25 Nov 2026 23:49:13 GMT  
		Size: 2.1 MB (2112745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721b1eecd3ec48497ce159a42196c71c41fc91c0ff45fa656017f47e7ecf29f7`  
		Last Modified: Wed, 25 Nov 2026 23:49:13 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.7` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:59650ff602466ca15fac1f0b29c0e77f68cd1d25612847d165025e1b49bcb84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.0 MB (529026971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d6e95d4ed8c73522f15f834a423f69bd120ec845568c220939d0812622f76d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:45:55 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:45:55 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:45:55 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 25 Nov 2026 23:45:55 GMT
WORKDIR /usr/share
# Wed, 25 Nov 2026 23:46:01 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:46:52 GMT
WORKDIR /usr/share/logstash
# Wed, 25 Nov 2026 23:46:52 GMT
USER 1000
# Wed, 25 Nov 2026 23:46:52 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 25 Nov 2026 23:46:52 GMT
LABEL org.label-schema.build-date=2026-11-18T21:48:49+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.7 org.opencontainers.image.created=2026-11-18T21:48:49+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 25 Nov 2026 23:46:52 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4f78b395fe48c313bbf65f3b62e55c8ce0bbabf27e0d6cf154a58123d6e81d`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 4.8 MB (4750147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102b96064794a01af9a008febed13b5331ba5a3e35b21e0390165c4abff5bfe9`  
		Last Modified: Wed, 25 Nov 2026 23:47:40 GMT  
		Size: 485.3 MB (485307769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bffb0a6b61a3595007767420ae750288606c6bdcf05605ba342640cd146192`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d90048d7b56621a8a2bc9ff06b1a9322cacaedc7b468751ff36206b1ff45212`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407a86fea6d0d08b2fc86a771bfa34c81304dd11d99b590b32b71e5093a8c095`  
		Last Modified: Wed, 25 Nov 2026 23:47:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb366f212eb077ab7eb53bb1e314a7cfb5980aac2082606baf58d762a1f73c2`  
		Last Modified: Wed, 25 Nov 2026 23:47:33 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a204f8b0f18515dca0e46116096adab3ee5920d5a668763d23733e59101e718`  
		Last Modified: Wed, 25 Nov 2026 23:47:33 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e37ad0ac2b09167e9cf4eecf4db27cb4cac3296f9c9d6d29aa3315078828d2d`  
		Last Modified: Wed, 25 Nov 2026 23:47:34 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b8149f2baa4e057f9172c67fa466b2e116d157bbcacfe9acb6516573de7dc`  
		Last Modified: Wed, 25 Nov 2026 23:47:35 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.7` - unknown; unknown

```console
$ docker pull logstash@sha256:306c69ecba82c9d7bcfe70da7fabb2b5bcfbc65fb393bebde018ca89670fa16c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2141810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2386a96321c726a98caef3034e1e5a955dcf0dddf9f2962791f185abaed491d4`

```dockerfile
```

-	Layers:
	-	`sha256:be2039d8c95a0f7e5a5440787851434e7f20739e3d68a1f4d3a217c7dd3346ba`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 2.1 MB (2111533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0732cb916b4fb31b3875ba659555dd215daddf741432920eb8a88bd2ee14acb`  
		Last Modified: Wed, 25 Nov 2026 23:47:32 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
