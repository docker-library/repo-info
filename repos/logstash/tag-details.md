<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.23`](#logstash81923)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.23`

```console
$ docker pull logstash@sha256:c34558c941322205ca6145a9a3c6d368fb6aa7ea70ea149741b2d05dc49213f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.23` - linux; amd64

```console
$ docker pull logstash@sha256:74c556d1edbceb16778504392b3b27ec1eb993b799a8a7258ef35b9c10cc215e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.8 MB (528805316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516295db596e950a896d6c0a25899e80d351ee6d12a358c967254cbd00fdf0b9`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:24:28 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Mon, 26 Oct 2026 23:24:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.23-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.23 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
WORKDIR /usr/share/logstash
# Mon, 26 Oct 2026 23:25:07 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 26 Oct 2026 23:25:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:25:07 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:25:07 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 26 Oct 2026 23:25:07 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:25:08 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Mon, 26 Oct 2026 23:25:08 GMT
USER 1000
# Mon, 26 Oct 2026 23:25:08 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 26 Oct 2026 23:25:08 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.23 org.opencontainers.image.version=8.19.23 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-29T21:17:40+00:00 org.opencontainers.image.created=2026-09-29T21:17:40+00:00
# Mon, 26 Oct 2026 23:25:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdb4374f9af91e8d31eaf814cd37fd15a33904de952770e085de529272eb5cd`  
		Last Modified: Mon, 26 Oct 2026 23:25:46 GMT  
		Size: 48.3 MB (48332323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51196d6e5e5f0ba5765cc1ca2cc34c04c2b56f73863de81a702fd3ec90b002c`  
		Last Modified: Mon, 26 Oct 2026 23:25:44 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77de3a88ec66a7792143b05e1184c69cb66e577bd6207359d6d6273b3f5f3074`  
		Last Modified: Mon, 26 Oct 2026 23:25:53 GMT  
		Size: 450.4 MB (450437653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc49f67c297cad5f2e006995a8d0916741c1b9739c52b1764bdac3c8aac45db6`  
		Last Modified: Mon, 26 Oct 2026 23:25:44 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0eaf8a8285623f228339248213b3bc05c1b0b70ef7f3135e4031201eb0078d5`  
		Last Modified: Mon, 26 Oct 2026 23:25:45 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f734967b05756b2d6f345e2916ee1126da10057b8b528b82e5e03662ca8fc13c`  
		Last Modified: Mon, 26 Oct 2026 23:25:45 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e862acff89f86b82752afdaec7e1c7e20c3994adb331ea7ddb1eba65b982de`  
		Last Modified: Mon, 26 Oct 2026 23:25:46 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3748329a182fa695fb68f6924419d3b24d38daceedcd3d315d980c4bb86aed2`  
		Last Modified: Mon, 26 Oct 2026 23:25:47 GMT  
		Size: 6.3 KB (6294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa7b7c5f0aebd35b00254a9d6786f49394166a6919a11edcfed2548988ed905`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18bb84f94ed8a66b6010f6738034b8dec4b8fd550d2c28a9883a0230b0e791a`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4acdb883ee78886121df3eb5afadb10c46ae42890693f82ecf054d384206deb`  
		Last Modified: Mon, 26 Oct 2026 23:25:48 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.23` - unknown; unknown

```console
$ docker pull logstash@sha256:104ff67855949594fa3d801e0aee24fae997de8cd8cda6cbc3f6d216ea31f874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3644815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5475b5939a139bc28c568142b0617d8503f3caff99b13ede9e0ecdda78fa475b`

```dockerfile
```

-	Layers:
	-	`sha256:63d4b4c9b8efc0eee81d168d6f318ec06ffcf16457a9669fd03940f2beb7f8a0`  
		Last Modified: Mon, 26 Oct 2026 23:25:44 GMT  
		Size: 3.6 MB (3608967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46f690de08c0001dcdada931119e171394c7077f33446e4090ce4ddda0b06755`  
		Last Modified: Mon, 26 Oct 2026 23:25:44 GMT  
		Size: 35.8 KB (35848 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.23` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:541ac952f619941c09f823318a2ed9a536a1d5fb84627c9c30ac644168993516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.5 MB (528477493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b8ab2b485462c5c10e01c4649e208912c1c843ed04116c78d755b858423016`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:29:06 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Mon, 26 Oct 2026 23:29:06 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.23-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.23 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
WORKDIR /usr/share/logstash
# Mon, 26 Oct 2026 23:29:46 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 26 Oct 2026 23:29:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:29:46 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:29:46 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Mon, 26 Oct 2026 23:29:46 GMT
USER 1000
# Mon, 26 Oct 2026 23:29:46 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 26 Oct 2026 23:29:46 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.23 org.opencontainers.image.version=8.19.23 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-29T21:17:40+00:00 org.opencontainers.image.created=2026-09-29T21:17:40+00:00
# Mon, 26 Oct 2026 23:29:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92152845c3e38c76c7a4d7fa45f83144ace09898424aaf0b0dab7dfeaf870678`  
		Last Modified: Mon, 26 Oct 2026 23:30:28 GMT  
		Size: 50.5 MB (50535352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2160704e6e00798fd0b1807296f2ce24d15fddf447c9c0b28bd5e6358805ee1`  
		Last Modified: Mon, 26 Oct 2026 23:30:26 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df524fd741ba302fb21948d02f5501a6f9aee174ff6090436380cc304584d19`  
		Last Modified: Mon, 26 Oct 2026 23:30:34 GMT  
		Size: 448.7 MB (448734292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfb5f65eb9917f46f1410ef8f25f44f249055269eca4049fd8616cb5ce55eba`  
		Last Modified: Mon, 26 Oct 2026 23:30:26 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7540c4aaa453aebf324b6de82024640d7b4cc5ba2b42f2c4a5d322e44cfae3`  
		Last Modified: Mon, 26 Oct 2026 23:30:27 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c33b94ea4d48538c36072d11d834b78c431559d34bb9b3aaa5c20964005eaa`  
		Last Modified: Mon, 26 Oct 2026 23:30:27 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47f9d2a504a99db6da5fcd4c86c57e5e013cd1f84bace94bceee32f2f81d24c`  
		Last Modified: Mon, 26 Oct 2026 23:30:28 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e396c417872fe8b3fa69a33def17dab0d247d05aa4d5845e18bd811f34d82934`  
		Last Modified: Mon, 26 Oct 2026 23:30:28 GMT  
		Size: 6.3 KB (6294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fde692b8830f173e14a678390197571de7d006e4fa84be65149b52df384c0c`  
		Last Modified: Mon, 26 Oct 2026 23:30:29 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb89faaaa28b02c41e818fe5070afda60ece22dec6f8ef417685583c478e6a5`  
		Last Modified: Mon, 26 Oct 2026 23:30:30 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746f83594f7ec0de87472d252b66adcb4802661962359a59a35405b969c32070`  
		Last Modified: Mon, 26 Oct 2026 23:30:30 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.23` - unknown; unknown

```console
$ docker pull logstash@sha256:b1d527266612954edd69488d373d0d371745434972b94659f21f6296d96bd835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3645369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4757d536e38e75e929922c2c044c86362ecce58b4d71c27c6b71838d690600d1`

```dockerfile
```

-	Layers:
	-	`sha256:2bbad9bd44169d8d09b84a57fa2bb20f9fe80b9cc397897885e6478e8f6a93a4`  
		Last Modified: Mon, 26 Oct 2026 23:30:26 GMT  
		Size: 3.6 MB (3609392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5477a45fb81ad1d46a3cf8e9da3a0a3bf6c8635df592e29344c0533a33cab353`  
		Last Modified: Mon, 26 Oct 2026 23:30:25 GMT  
		Size: 36.0 KB (35977 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:e29c815efa81d60ddf262cba86d8d5e2e17cd46825cc80463304256ca0f5c70f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:5c89dee63ea04efd84be63c341a8d4f7013f784c5f57873685970983a5778fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526569552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1918d5f3854f2c2deb0dc2f199ecbc52b86979f24690ef86092dad75cac7a403`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:21 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:51:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:21 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 23 Oct 2026 16:51:21 GMT
WORKDIR /usr/share
# Fri, 23 Oct 2026 16:51:24 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
WORKDIR /usr/share/logstash
# Fri, 23 Oct 2026 16:52:15 GMT
USER 1000
# Fri, 23 Oct 2026 16:52:15 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 23 Oct 2026 16:52:15 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 23 Oct 2026 16:52:15 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf0b911d6d4cbdebc0f3d558a9af2da4174a220491a44cf8fa0448cc279cecc`  
		Last Modified: Fri, 23 Oct 2026 16:52:54 GMT  
		Size: 4.8 MB (4758405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f70ab021a5a794b0b9c160b0d29a55775afbe4a689a994f474763eea9a213e`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 480.9 MB (480937088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7575525ea800c3ad3309f516665d1e3aab350c955b79faa851984e08be66ff`  
		Last Modified: Fri, 23 Oct 2026 16:52:53 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48666f0da1db86954bfe4abaf8cd8cbd9dd25058af949142be9100a0befef7a8`  
		Last Modified: Fri, 23 Oct 2026 16:52:53 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb746a249b81b9c96b3a2817295266582eede89f2892482871cf815cb4527bd`  
		Last Modified: Fri, 23 Oct 2026 16:52:53 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff54176438a12822ddfdb6d3c2b0012091e8edd6635d0e31d3338e9bdcc803f`  
		Last Modified: Fri, 23 Oct 2026 16:52:55 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a070e46e6ffc0260bdd1f9cfd11bc96c1d7e95097eb4448cd3f1225021f3a1fe`  
		Last Modified: Fri, 23 Oct 2026 16:52:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfdda9dd58425a73abee9381b5438529a52298010396ddab54827701f52e60a`  
		Last Modified: Fri, 23 Oct 2026 16:52:55 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859cecc29fee41acda6c88742aaddc92981466324df1218139b358a6745cceb9`  
		Last Modified: Fri, 23 Oct 2026 16:52:55 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:2c51b6c654078eb24099141b330d4848aa9ecd29482da87d51f1a040f8283636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a90538550184c9b02f55981164978cf81468367c236720652073d6995d01c0`

```dockerfile
```

-	Layers:
	-	`sha256:8379e108215e9985ed8ba9ce2add63b2b7a27be622f9bafb43d83127a6c167e2`  
		Last Modified: Fri, 23 Oct 2026 16:52:54 GMT  
		Size: 2.1 MB (2095666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7b6bcdb32e211fb132ba4323a15480b110267aa8ab789526b1cd571228c5603`  
		Last Modified: Fri, 23 Oct 2026 16:52:53 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:8003761127454c021ce53cebb96542e48c038439c6873d6ba4eee962d9a6f55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522945083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5398732a91f7a0d87114e1162b59b7fd667de2fc71772bbf7785e8ef9c6fd50f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:30 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:51:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:30 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 23 Oct 2026 16:51:30 GMT
WORKDIR /usr/share
# Fri, 23 Oct 2026 16:51:33 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:52:24 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
WORKDIR /usr/share/logstash
# Fri, 23 Oct 2026 16:52:25 GMT
USER 1000
# Fri, 23 Oct 2026 16:52:25 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 23 Oct 2026 16:52:25 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 23 Oct 2026 16:52:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbf42a2020c0d13bc508a70d62f043dae74d05b5de0c5eb7e4babfb60ec648c`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 4.8 MB (4752065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3f77e0207d133cf8cf4dfa1df66866a22f0fa206d93da081f1b53b093487e7`  
		Last Modified: Fri, 23 Oct 2026 16:53:16 GMT  
		Size: 479.2 MB (479213512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c67eb365e40d8814cfbdad0e6a84fa083524187ca48e619306aaf1faddfe6a`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 6.4 KB (6366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3103e07e79cc2b60e536ab6fef8586887cd88897a44982d28e4b710ba4e49741`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a437bc97ea60e1072a29dcc0d835f046070c6e0cf30b1684337b2a9783d5e6e1`  
		Last Modified: Fri, 23 Oct 2026 16:53:06 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84f181983dc008bb336eed693c43d92c6f91aa797c67e7953775d25e86f658b`  
		Last Modified: Fri, 23 Oct 2026 16:53:06 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7b157c98dded999de8c7dbc917b97b85339d3ab225dff38746f8432044423d`  
		Last Modified: Fri, 23 Oct 2026 16:53:06 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9058c9d694fda43c20defafca6273fe90c89ee731ddba3c1e2074c22cf09c8c6`  
		Last Modified: Fri, 23 Oct 2026 16:53:07 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2b2c679d5ad7c48bbad059b643e5ba928e896010b58a4beb184389b82560cf`  
		Last Modified: Fri, 23 Oct 2026 16:53:07 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:bda428b4ce89e5eae534b86668bfef582ddc679a2531be12212cc41b82508ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7730dfc4a13c69619099a6cf9c2860c48b115bffc600b8da6d3c7b7dc794c82a`

```dockerfile
```

-	Layers:
	-	`sha256:69bf65a8d7b7ce787cda41c664590295dfbf912224e5c0e01b0390dc6d6d4d18`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 2.1 MB (2094454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ca5aeb6f9b01f595972146375742d6593ae665ba7100b871e0c1b14e447e17f`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:6126cf5144f57312eb52a7f12e0dce1f1603ff42ab822b3fc6bf95e4dd545af9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:4061af25a25990bbf669dc4b131f5e1ec1c337fc010d5e3308cf765dcd94942c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535153397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809a9c756dc1bfd78b71aa4d6cf45d68b26dda1e05c62045c619578e1e5c05be`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:21 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:51:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:21 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 23 Oct 2026 16:51:21 GMT
WORKDIR /usr/share
# Fri, 23 Oct 2026 16:51:24 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:52:15 GMT
WORKDIR /usr/share/logstash
# Fri, 23 Oct 2026 16:52:15 GMT
USER 1000
# Fri, 23 Oct 2026 16:52:15 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 23 Oct 2026 16:52:15 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 23 Oct 2026 16:52:15 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e28b350369fc211a86b5b647ef55cda8e11f1bb9991c226077c2baf96a532dc`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 4.8 MB (4758406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2db483ebf9e69dc08c048219cc72e18f3b836afd91e5011f996d1845aaab1e4`  
		Last Modified: Fri, 23 Oct 2026 16:53:03 GMT  
		Size: 489.5 MB (489520761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4c668b75842d2fc48078dcb1741f24c904a7babfa92e31b35a5b6c742d8456`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 6.5 KB (6542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d0faad37d7fab65be43fb4fff9c743b0a262bdf85452fb6e861bcccf37b592`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb746a249b81b9c96b3a2817295266582eede89f2892482871cf815cb4527bd`  
		Last Modified: Fri, 23 Oct 2026 16:52:53 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a025176e980e7c42832ef5a17c41361b355f7985f3915db78979cfc64b51854`  
		Last Modified: Fri, 23 Oct 2026 16:52:54 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83500fb85183625caab828683481a902e38d43df1d36af6302709b4a7f87435`  
		Last Modified: Fri, 23 Oct 2026 16:52:54 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d6f7a0be5c2d9a9488df07e5f185f395aa61bc50a9506678416d6e0431512c1`  
		Last Modified: Fri, 23 Oct 2026 16:52:54 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859cecc29fee41acda6c88742aaddc92981466324df1218139b358a6745cceb9`  
		Last Modified: Fri, 23 Oct 2026 16:52:55 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:bf625483adf8bfa9f892b319dd6fac45d804fec6794e9c979aceb7c52701f2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2344d94e5645b9bfc52f48531b6b8684ed91c01c994ecc23cca6029b0bebfabd`

```dockerfile
```

-	Layers:
	-	`sha256:d49bba62475b9fa9161994f7a278688ab00bffbc232a75f7c8156da7cf1050ec`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 2.1 MB (2122892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae7414db31f4a7d432046124341b7e2087d4d262e80cd366788b09ed160e4477`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:214388733c3e2f0f50c42956edfa06a72673900565e9d13fe40e7191a82c1c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531537558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a660385683d2de48528a8853450d3032dfffb864f13faef60c29b485cccf74f0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:29 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:51:29 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:29 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 23 Oct 2026 16:51:29 GMT
WORKDIR /usr/share
# Fri, 23 Oct 2026 16:51:32 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:52:25 GMT
WORKDIR /usr/share/logstash
# Fri, 23 Oct 2026 16:52:25 GMT
USER 1000
# Fri, 23 Oct 2026 16:52:25 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 23 Oct 2026 16:52:25 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 23 Oct 2026 16:52:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22142b7d12eaa541801d192e073ec4480ddf1dcc4952a59dbe91eeae4b0bcd7`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 4.8 MB (4752073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ac2c0bad7d0f4fa7a4eb99ca535d8734de53be2a8001ee40c992bc0d7bd0fa`  
		Last Modified: Fri, 23 Oct 2026 16:53:14 GMT  
		Size: 487.8 MB (487805810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6454b92c5994b33538241ac50b24c155f7735ebe5bb19c0a4095f5a0a15591`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e8beb4b003401312ee037f753eddf9c8c12a7f9974d2c9a9e39fb489dbecb8`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c07bd649df82c04d957a5e221fa90aa1ea5fe54b8b75a4241da4c762d13940`  
		Last Modified: Fri, 23 Oct 2026 16:53:06 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e2d7d97c0d6300f0cc014c07c74a5949988a3b3d9ea49826f588b34ea92585`  
		Last Modified: Fri, 23 Oct 2026 16:53:07 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4caea0e8cac0f8c3744a082c1796e2b73199d52e2011724cdb0c88346a35dfe`  
		Last Modified: Fri, 23 Oct 2026 16:53:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9949437de87b0af48cdc628a84e73e9b2d6aac52c2b04ea1c5d411f035475bf4`  
		Last Modified: Fri, 23 Oct 2026 16:53:08 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64594035edd091abeaec595d924037c6d41d328222a96e9f1251c53d7c5eba54`  
		Last Modified: Fri, 23 Oct 2026 16:53:08 GMT  
		Size: 708.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:96c29739a86d9f0349d2ef93dc9b862640bdfbf192126bb6b127269c67326de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96485a7011cd7492349c47568866f05003a95763c42f0378a1241713720f44e`

```dockerfile
```

-	Layers:
	-	`sha256:8accc39e9191e1977939eee4dea5cb3e557beb27b5c1c317ffcdcca1185a7559`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 2.1 MB (2121680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7184a62f64ceba09e2564d8cc42af06e3317c9eebb5c29a98ba7b7828c27fa3b`  
		Last Modified: Fri, 23 Oct 2026 16:53:05 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
