<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.21`](#logstash81921)
-	[`logstash:9.4.6`](#logstash946)
-	[`logstash:9.5.3`](#logstash953)

## `logstash:8.19.21`

```console
$ docker pull logstash@sha256:ad9a188d7adbdb43487f80c1f88cce1608b425db100707efe2e66b49a5aaa194
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.21` - linux; amd64

```console
$ docker pull logstash@sha256:95e9e6a82fb48f02f8d2ebbe8e02a726a2d66bfe3a29b602e2c6bb9a5fb643aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.4 MB (539362653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e436cd2d986ff037796f7e4cd992b40aec4e62ede7599cdba4071102c8cab51`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 23:05:10 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 01 Sep 2026 23:05:11 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.21-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.21 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
WORKDIR /usr/share/logstash
# Tue, 01 Sep 2026 23:05:52 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:05:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:05:52 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 01 Sep 2026 23:05:52 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 01 Sep 2026 23:05:52 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:05:53 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 01 Sep 2026 23:05:53 GMT
USER 1000
# Tue, 01 Sep 2026 23:05:53 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 01 Sep 2026 23:05:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.21 org.opencontainers.image.version=8.19.21 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-24T15:53:50+00:00 org.opencontainers.image.created=2026-08-24T15:53:50+00:00
# Tue, 01 Sep 2026 23:05:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfb416e614bea01dda7cf2bd602a6e6b89fa58cc563d7ca5c2b5012b445ae91`  
		Last Modified: Tue, 01 Sep 2026 23:06:29 GMT  
		Size: 58.3 MB (58268604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:485b594542862c5c5bfbc23d210d628b55868201f542241075823a7b557ea998`  
		Last Modified: Tue, 01 Sep 2026 23:06:26 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0370b645f3a5478afcc2fdb341b2d8f9793b1e07e1a6a1b845962ee2ac4d488d`  
		Last Modified: Tue, 01 Sep 2026 23:06:36 GMT  
		Size: 451.1 MB (451073505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f5a2564b94904927c636a5a2354b9348ed559e6c10ee4abd465cf0e5a1c7f7`  
		Last Modified: Tue, 01 Sep 2026 23:06:26 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e45633244384e0df663c2520c19db5979e4f2521a2a435ada017f3cd8b19185`  
		Last Modified: Tue, 01 Sep 2026 23:06:27 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da3a9f86d4c8b96854d84bd1eff99bd7d9bdea29f54448454fc99023dfd3482`  
		Last Modified: Tue, 01 Sep 2026 23:06:28 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6ba70fd7bfa1add40182cd9740f22252c78daae6d466a46eb31c730457780d`  
		Last Modified: Tue, 01 Sep 2026 23:06:28 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d6a3bb0de1e495fd4d21b4b72469a07a46427a33c76c37c2a5764f34154f79`  
		Last Modified: Tue, 01 Sep 2026 23:06:29 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470a8f30e63471da06e758c76438efda57317d296fe4f83f0efe4530e736ba84`  
		Last Modified: Tue, 01 Sep 2026 23:06:30 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31e6f751bad62ed0220cf919ff87aa09c0ca64ed4085bdc39e7038b91d25434`  
		Last Modified: Tue, 01 Sep 2026 23:06:30 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81677dac52b49a6184b80bde3a6a41d0eecf6a847c6636990546504bc14c4e13`  
		Last Modified: Tue, 01 Sep 2026 23:06:31 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.21` - unknown; unknown

```console
$ docker pull logstash@sha256:39735614b980321b60d65567a25a5f7eb475dcb0588270959c20575daaa441fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8db49df6402b9614b884edaf5a0677370af12ab7a4761b5b2e896b9b02d274e`

```dockerfile
```

-	Layers:
	-	`sha256:b2cdfcbc0d457fe1d5714a267956e13728cab931eb5cc7b006cd337506456dfc`  
		Last Modified: Tue, 01 Sep 2026 23:06:27 GMT  
		Size: 3.6 MB (3610839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c4bf037e83400e86b7c68e660a9c6c55edeb83d58e2e9906d5f11e328f6add2`  
		Last Modified: Tue, 01 Sep 2026 23:06:26 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.21` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:525b19a625233c02ce11c56c677855eb319c0143079378b40577e881d9b37096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **538.5 MB (538488925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32590c6a6b4c5c8a48143b20bf76359743f4191ae62a64906e3e67b75f75d997`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 01 Sep 2026 23:06:04 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 01 Sep 2026 23:06:04 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.21-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.21 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
WORKDIR /usr/share/logstash
# Tue, 01 Sep 2026 23:06:26 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:06:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:06:26 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 01 Sep 2026 23:06:26 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 01 Sep 2026 23:06:26 GMT
USER 1000
# Tue, 01 Sep 2026 23:06:26 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 01 Sep 2026 23:06:26 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.21 org.opencontainers.image.version=8.19.21 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-24T15:53:50+00:00 org.opencontainers.image.created=2026-08-24T15:53:50+00:00
# Tue, 01 Sep 2026 23:06:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcc3ecdce00213da7fe2a4e821672e4af8f6460916628177d5f0cb223c96a4a`  
		Last Modified: Tue, 01 Sep 2026 23:07:08 GMT  
		Size: 60.0 MB (59977261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab9fa46dc75c99e7ea650d7fd1cb21a32f0f2d2faaf4fceaa045582c155b16f`  
		Last Modified: Tue, 01 Sep 2026 23:07:06 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996f09f5f7346c5bee43c8ca547b99c5bdccaef84458a50b8f1f5bca8bdbc1c9`  
		Last Modified: Tue, 01 Sep 2026 23:07:15 GMT  
		Size: 449.4 MB (449356694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259333f52fc287b01c0403607ab1e9fbb7012b190df69c366ba9ea2f255fd81d`  
		Last Modified: Tue, 01 Sep 2026 23:07:06 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd77a5f18fdf8b2d464a1bc36a5503f25ffc6085e06e098f88a89104e07b52ae`  
		Last Modified: Tue, 01 Sep 2026 23:07:07 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df61ecd7c45c04b2cb880a35bc73b74bc9516871a0b2fb6f0d33ac4dfde41275`  
		Last Modified: Tue, 01 Sep 2026 23:07:07 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268bb02292d8343a092dec0e945742fa0d621a53fc8fdc87d059187cd9fe4c8c`  
		Last Modified: Tue, 01 Sep 2026 23:07:08 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c1c628e951c2d345f029916822ee822f621a7c078eb73269fb1fc71ccc7d76`  
		Last Modified: Tue, 01 Sep 2026 23:07:08 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d95895fa9a899bb0b4e44bc88a1569ece41d1cfc74149d6031f3c64929ad1a8`  
		Last Modified: Tue, 01 Sep 2026 23:07:09 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87628970424528257c57e727157fc0cde14b02fb631cdb980c43d3d309f56b7e`  
		Last Modified: Tue, 01 Sep 2026 23:07:10 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6c312be06d21689a8805f1ef2cc5e7e2d225a851f4a8f6f1590a58b16d5f89`  
		Last Modified: Tue, 01 Sep 2026 23:07:10 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.21` - unknown; unknown

```console
$ docker pull logstash@sha256:6d8777b1872ba16571666592c848d2da87253e58420c1a21497bdf207ce53e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3647236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f74e89dda33796f8af705df5398923c9d5b917f2348bfff8b6af6c757d23f6c9`

```dockerfile
```

-	Layers:
	-	`sha256:119e076867ddd2fa2e57f62fe2ab81cc87f37fcde0afc4197ba92806769ee117`  
		Last Modified: Tue, 01 Sep 2026 23:07:06 GMT  
		Size: 3.6 MB (3611264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22db2ec93cbca91905c216d8712dfdc3c19b9e2b7699bbc2cd4377844c9d8bfd`  
		Last Modified: Tue, 01 Sep 2026 23:07:06 GMT  
		Size: 36.0 KB (35972 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.6`

```console
$ docker pull logstash@sha256:2526dda64b0e4614af9ad653421caedc5e83db02adb503df2ce1d52bd03667c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.6` - linux; amd64

```console
$ docker pull logstash@sha256:02ab62abf9f51cac16ab62c1ad57b3cab7324e4db6943fab9c6cf8c2c2977a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526553476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:720331fa3bc8c5beca46ce6177a2cc75149425f108be0ec97c69fd6ae188fc70`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:05:35 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:05:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:05:35 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 23:05:35 GMT
WORKDIR /usr/share
# Tue, 01 Sep 2026 23:05:39 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:06:32 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:06:33 GMT
WORKDIR /usr/share/logstash
# Tue, 01 Sep 2026 23:06:33 GMT
USER 1000
# Tue, 01 Sep 2026 23:06:33 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 01 Sep 2026 23:06:33 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 01 Sep 2026 23:06:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfbd815dfcbc5dd0dc89f01ed479f4af49a6df33a6f01e8518ead2a1548f679`  
		Last Modified: Tue, 01 Sep 2026 23:07:11 GMT  
		Size: 4.8 MB (4773427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9cb2d8b2b4f8691fd984139fa24a5882cdbdcda0eb6c721eb9985d08df99643`  
		Last Modified: Tue, 01 Sep 2026 23:07:23 GMT  
		Size: 480.8 MB (480805669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e5dc3796b69204e3fb3045eb6503b88133d66a29904bfb49ef1c9159175a60`  
		Last Modified: Tue, 01 Sep 2026 23:07:11 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e1746d837c4be0c7625c7a6130e8e7d785e0320ddde7d211f47d8494de30b`  
		Last Modified: Tue, 01 Sep 2026 23:07:11 GMT  
		Size: 255.2 KB (255187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22223bd1ef20795da9aa46c344dd12696000bfed6aa97a9246febcec063996b7`  
		Last Modified: Tue, 01 Sep 2026 23:07:12 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db972ab7ea3e00f1bb4086d0e523268072df894f7052f9e1c1aae8e24a1a95b`  
		Last Modified: Tue, 01 Sep 2026 23:07:13 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f4bc465737ae5853291cd657dbd769a5e96657f38480139d6e53b8cb04b3d4`  
		Last Modified: Tue, 01 Sep 2026 23:07:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061f061f22bb0b83cb7bb6f79246c0e8944e5fafbae938c7991e7dd38de983c5`  
		Last Modified: Tue, 01 Sep 2026 23:07:14 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa35ad94ac8ea5503bd0c99c7a5922adb80fbf89daf08e6373049cfb46c62f6a`  
		Last Modified: Tue, 01 Sep 2026 23:07:14 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:d3656164d6cb31781770065e7814ff1c7fb4ad44ca78e26596f7308aa73231ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c229926f0c0fa57b2485a5b26ac9a43069b6ccff5f715a9f410a8d61c93d2d7b`

```dockerfile
```

-	Layers:
	-	`sha256:80d379459ffe8f95ca2d16de81fed659748d5428c68808725c9feb6afc47d767`  
		Last Modified: Tue, 01 Sep 2026 23:07:11 GMT  
		Size: 2.1 MB (2116741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:002d3ac07ba7763bc52f9b7a5a94017fe824899d944b4e79fb17ad45f8c5d44f`  
		Last Modified: Tue, 01 Sep 2026 23:07:11 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.6` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:03215f2fedd68466c62fb195a56163e2a85f526bc70b7081af2d66f2751af5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522924494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbfe0aab812aba9edb1539596f7dec91cbca392359b77c5c0e52fc3ad1f1523`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:05:43 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:05:43 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:05:43 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 01 Sep 2026 23:05:43 GMT
WORKDIR /usr/share
# Tue, 01 Sep 2026 23:05:46 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:06:15 GMT
WORKDIR /usr/share/logstash
# Tue, 01 Sep 2026 23:06:15 GMT
USER 1000
# Tue, 01 Sep 2026 23:06:15 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 01 Sep 2026 23:06:15 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 01 Sep 2026 23:06:15 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7add2b1c76569b9296db97d425e8ef14737e69f835e7fb054f9f67c8c92c209c`  
		Last Modified: Tue, 01 Sep 2026 23:06:55 GMT  
		Size: 4.8 MB (4759932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcb0254f8e275ae6124a58e31de22678a725ed82b889dafb0fe7d8766d311bb`  
		Last Modified: Tue, 01 Sep 2026 23:07:03 GMT  
		Size: 479.1 MB (479083768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abea78cad379e8982e56283496e6d5dc51c0113989a7b9a32a1c04af41685a32`  
		Last Modified: Tue, 01 Sep 2026 23:06:54 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c80e4b9f297d10e4a57ed1e0c357b01a83d2ae7682a793d58cfd4b88d41e13`  
		Last Modified: Tue, 01 Sep 2026 23:06:54 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f9561fb65ac735691582a2041eebfe709298b722df2612b96c8c9825600bd8`  
		Last Modified: Tue, 01 Sep 2026 23:06:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ff1a17fa0fb89af0adc677aeb5b009f4ad9f9e0487f321360554ccf8af636c`  
		Last Modified: Tue, 01 Sep 2026 23:06:56 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074d15c18b4486cc95303b177776c34220e4ff1031098fdca944194b43fe0ef5`  
		Last Modified: Tue, 01 Sep 2026 23:06:56 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad66b43f58017ec7cbce7355323774d4be1ef506204eb8b9802cb802271060e7`  
		Last Modified: Tue, 01 Sep 2026 23:06:57 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a2a50d6150025e2c7c79a76691d52e25ff2595e046095921a7dd3dd2326366`  
		Last Modified: Tue, 01 Sep 2026 23:06:57 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:231fc5ec4dee0c5385c5c9031c506fe961fa30fb35f2f9c5b175e02b07872250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1869b1b8f51a50c985d9c4a8aa9d0d185e714dc1baf6163a401c764feaa023`

```dockerfile
```

-	Layers:
	-	`sha256:63dd0360a021d5dacf870c3b999670e8688d0af9321a482a106320a78aa7b81c`  
		Last Modified: Tue, 01 Sep 2026 23:06:54 GMT  
		Size: 2.1 MB (2115529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66a31740ece5ef4ee9c8cd19ec13e63c82cf73af690534d930884a2782031229`  
		Last Modified: Tue, 01 Sep 2026 23:06:54 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.3`

**does not exist** (yet?)
