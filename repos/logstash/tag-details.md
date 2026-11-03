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
$ docker pull logstash@sha256:e8463527365b936ceffa590fa50012d835df03002f8417b5cc9cb40c7f96400a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:6b27eed15765151098464490fd7a44e4fbc7682ef1a6ef424f15921d7ee5ca2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526617168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566be0585b9d4483ff51c50f74599be9e8d927014f1e73dfe10601bd8d89ef50`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:56 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:55:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:55:56 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 03 Nov 2026 00:55:56 GMT
WORKDIR /usr/share
# Tue, 03 Nov 2026 00:55:59 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 03 Nov 2026 00:57:05 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
WORKDIR /usr/share/logstash
# Tue, 03 Nov 2026 00:57:06 GMT
USER 1000
# Tue, 03 Nov 2026 00:57:06 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 03 Nov 2026 00:57:06 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 03 Nov 2026 00:57:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d578c4350519116c2edd4d69a842daec646b263118975924e2918cc6aeb1c9`  
		Last Modified: Tue, 03 Nov 2026 00:57:40 GMT  
		Size: 4.8 MB (4759139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8dcf666c480cec5d4e8a762f4148faeec8ae4e3862b8adc580cfbb12f80047`  
		Last Modified: Tue, 03 Nov 2026 00:57:49 GMT  
		Size: 480.9 MB (480936828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0759790c14d0cb4f35cea89b825958d4ec1bb06dd1c8dc5b92255deeb67c34`  
		Last Modified: Tue, 03 Nov 2026 00:57:40 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3929ef9543eabf11c198a840509aaf000747be945d9491d343de757f89383cd`  
		Last Modified: Tue, 03 Nov 2026 00:57:40 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43ced2eea6615b0d02f2cc7aeadf64f12a6e10482013b6a30870ea1dce47553`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a682d38f6c191a949cbfdbcc605b95d6e9e8d4d5b9f96ff34caa9d141208a9`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5ad0bd685bf3ee0eb456ed388da3c8debaa143c5f54baf35d41121cd9b37be`  
		Last Modified: Tue, 03 Nov 2026 00:57:42 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68a4fabab0b82081068c45becb659953d7145dcbbd4cab78eb4d2c8e79894aa`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3555669bba727eebb338d71c7dc3cb827f1e2970b8c89490aa0b72e96b08050`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:d91bc61675d7365583a1a830fd25a40a0bc7a48514eb356b1d4aeb7fc898d20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affe66e4c185ec92e45e4a7ebc99cff98181e9d211aa088baa60be4f5107bdc6`

```dockerfile
```

-	Layers:
	-	`sha256:91f7e10a3fe46cada843625ac5e272e64bb25a4afd4554d2ad995173ef2034f1`  
		Last Modified: Tue, 03 Nov 2026 00:57:40 GMT  
		Size: 2.1 MB (2095682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba83022b3b3d3b42358eabd821f7d06c0d1caf8d3c35a802a4db83b2ab8d5e32`  
		Last Modified: Tue, 03 Nov 2026 00:57:40 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:5088545c21f177f087e995297365cd09dc3307e8143067667b7e7082fb0c9765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (522991410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f51982afb1b1d67b5a49bbcc6de7a1e2f49ce2355f1d97194d603155a12e5eb1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:55 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:55:55 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:55:55 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 03 Nov 2026 00:55:55 GMT
WORKDIR /usr/share
# Tue, 03 Nov 2026 00:55:58 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:05 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:58:06 GMT
WORKDIR /usr/share/logstash
# Tue, 03 Nov 2026 00:58:06 GMT
USER 1000
# Tue, 03 Nov 2026 00:58:06 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 03 Nov 2026 00:58:06 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 03 Nov 2026 00:58:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a3805bd40de9ab6c523b03d4569f9d030aeca13391af8f35141f4a0dcc68170`  
		Last Modified: Tue, 03 Nov 2026 00:58:45 GMT  
		Size: 4.7 MB (4749458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd591483bf7052be247c055ba83e5c7696b5a606c7e781d4dca27e18ee82fcb9`  
		Last Modified: Tue, 03 Nov 2026 00:58:54 GMT  
		Size: 479.2 MB (479212954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d1b792afd3973bc680475458f5d14d278f2c962ca60ce1cffc91be945d106a`  
		Last Modified: Tue, 03 Nov 2026 00:58:45 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61bb55b994ccc615a690d9c6ea1237ba082071102b3f9ac669f9bcf6c21bf33`  
		Last Modified: Tue, 03 Nov 2026 00:58:45 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66457b79ee2e88971fa3f892edfbc2975e1e6d56cd3eccda4db971b40c13050c`  
		Last Modified: Tue, 03 Nov 2026 00:58:47 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da1d2945faf17632c4bb5da26790b9b6b24118f04e314ad19d79c8e294b6b99`  
		Last Modified: Tue, 03 Nov 2026 00:58:48 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b601afa18d0a677f09ead59c0694d87fec2582fcfc64ac7a04e894b8c8697996`  
		Last Modified: Tue, 03 Nov 2026 00:58:47 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e064eaa80996ae575c86a9b7aed5166598d6d1e495100221c50c0d476d756337`  
		Last Modified: Tue, 03 Nov 2026 00:58:48 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3da9d34491105c0f16997b4b5cf6f53bb9ff29f23fb7f4d71c3a4bebda5f199`  
		Last Modified: Tue, 03 Nov 2026 00:58:48 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:c0910d0ab6f0d6d6c6e7356540bd3385076d901eec5e63384f5f16be0be3608f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea7374fe5a8485528a20a9b7c36860963cf9215ba984c431a7d67ebcb604ece`

```dockerfile
```

-	Layers:
	-	`sha256:639dd3c50945f84cf2f675f96202e9a45fd3500ec0b3099d57fe727cbaeb802d`  
		Last Modified: Tue, 03 Nov 2026 00:58:45 GMT  
		Size: 2.1 MB (2094470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:335360a81531b791ae2cc879ccf6bc80ba88f75f81b8622a6ab4f95fcbe11d9f`  
		Last Modified: Tue, 03 Nov 2026 00:58:45 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:d7ac6578d5f7894e7bcce35bf3b1d8aa007b66d806d03408ef02904ea40ccc98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:ca8925df959ff6cc0cc39b28c55898b00fa12b8976a3e1aa9a5ae43a45e948e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535201277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46190b830556ace25a583fcd12fb7160d7be41ea9d232c29c7dcbe32449a101c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:56:08 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:56:08 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:08 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 03 Nov 2026 00:56:08 GMT
WORKDIR /usr/share
# Tue, 03 Nov 2026 00:56:10 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:58:02 GMT
WORKDIR /usr/share/logstash
# Tue, 03 Nov 2026 00:58:02 GMT
USER 1000
# Tue, 03 Nov 2026 00:58:02 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 03 Nov 2026 00:58:02 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 03 Nov 2026 00:58:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ebfc7a4584e0e2e6c5771610bf2ddc2170092e4df52482507047c6e7e88f6a`  
		Last Modified: Tue, 03 Nov 2026 00:58:39 GMT  
		Size: 4.8 MB (4759156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d5c659c6b5f58f96fd96e2142d53355832b3b866032983837fec04c2b55152`  
		Last Modified: Tue, 03 Nov 2026 00:58:48 GMT  
		Size: 489.5 MB (489520741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfea35291429c2a26f918ea175fdb6653bfb4715bc4b19aa71d169f7dd8c7ac2`  
		Last Modified: Tue, 03 Nov 2026 00:58:39 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355e306f01e97dbf67b7e605bb506fabe22b9c7a6cc2bd974271f537f3be8bff`  
		Last Modified: Tue, 03 Nov 2026 00:58:39 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120cf36fd08800b4017352170647c81458fa459e4ed773edac722b80637485f6`  
		Last Modified: Tue, 03 Nov 2026 00:58:40 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff5cfc62a2e167df02488e1285a25ee10f440fc38df281340f772677d91fb7e`  
		Last Modified: Tue, 03 Nov 2026 00:58:40 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1786e22e9535d79c4b553c9fa73b0221a928fc5beafdb0cdaa25848e99b8849c`  
		Last Modified: Tue, 03 Nov 2026 00:58:40 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348bb232aa3ec600b3d5f2d90386755b3f6b4035c8138bfb1d8c53f0924d34c6`  
		Last Modified: Tue, 03 Nov 2026 00:58:41 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc02060683f6eaea4dfdc382a454da462c705ce60385c67fef002cfc72377030`  
		Last Modified: Tue, 03 Nov 2026 00:58:41 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:ff89ef366f9eb6dd76cd3f2ddf848463404a5b39915010250fad5967b731610a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe35fbef2a6dcda6a35a0acb1b9b85093ae922ab48b111b132307bcbbb70ee4`

```dockerfile
```

-	Layers:
	-	`sha256:878bd4aef5814285af0ffddb44a744c7202b42ff37c8a9b29e83dc963c577e3f`  
		Last Modified: Tue, 03 Nov 2026 00:58:39 GMT  
		Size: 2.1 MB (2122908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feaee490dabefc64a82040bea3e038d19e02ca3384e40ac841a824ad7e2cd81b`  
		Last Modified: Tue, 03 Nov 2026 00:58:38 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:d1da32c0e7b5c67e4847a31268ff0a52a1d724766c5c0c1064cf885e262daf89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531584430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d73780517b940436a781dd9b10c4fa41f74c7a83ca7015fcf2055087887377f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:56 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:55:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:55:56 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 03 Nov 2026 00:55:56 GMT
WORKDIR /usr/share
# Tue, 03 Nov 2026 00:55:59 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:00:25 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 03 Nov 2026 01:00:25 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 03 Nov 2026 01:00:25 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 03 Nov 2026 01:00:25 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 03 Nov 2026 01:00:26 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 03 Nov 2026 01:00:26 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 03 Nov 2026 01:00:26 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 03 Nov 2026 01:00:26 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 01:00:26 GMT
WORKDIR /usr/share/logstash
# Tue, 03 Nov 2026 01:00:26 GMT
USER 1000
# Tue, 03 Nov 2026 01:00:26 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 03 Nov 2026 01:00:26 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 03 Nov 2026 01:00:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846f3c08850eb02f0f589339f5f4737afb6f3f32c46bf527ed1de9718b33951a`  
		Last Modified: Tue, 03 Nov 2026 01:01:08 GMT  
		Size: 4.7 MB (4749431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a380b940d60fec928e6fc368ae32ebdbfbaf18c4de45df5f495e36a9a14eb1f0`  
		Last Modified: Tue, 03 Nov 2026 01:01:18 GMT  
		Size: 487.8 MB (487805811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33088c61e89d23799666b7c71e81c14182cec596d7d80bdc13a14269026729b`  
		Last Modified: Tue, 03 Nov 2026 01:01:08 GMT  
		Size: 6.5 KB (6545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc185b535f47bf365e89dfd820a65c044032296c7fde46253026e129c5a572a`  
		Last Modified: Tue, 03 Nov 2026 01:01:08 GMT  
		Size: 255.2 KB (255188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d08c903bbe32a5e42e5f8a45a2d87b39f31a08bffd9f2fa1af2750c614dddc`  
		Last Modified: Tue, 03 Nov 2026 01:01:09 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3bbf3f98f85e9b43673f6e9822824cbb0f494a49faf4a7cc8078ae7e4263e3`  
		Last Modified: Tue, 03 Nov 2026 01:01:09 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95b0e73c1928661f6cbb6c8b84eb4ea1471dfbc8d3d6181960310346dc7ad79`  
		Last Modified: Tue, 03 Nov 2026 01:01:09 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee51cd767430af371fc4f09b9be2c83b75bf4773f7bb0f10cbe9b28cf9b49ae`  
		Last Modified: Tue, 03 Nov 2026 01:01:10 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d9f16d734d54dbaf745f45db24fea1259bfc746158819ce569f0e033caf97d`  
		Last Modified: Tue, 03 Nov 2026 01:01:10 GMT  
		Size: 714.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:4c65c5757da524601dc04de13d62f22dd6b71a03558bd99ebfa5a69f13205e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19bcc043326186120c2df2a9103f4cad11c01cade0e500b7c557c1ad0b81ce82`

```dockerfile
```

-	Layers:
	-	`sha256:f6978732ef1fe46356231ccb95420dbb754532f321244694bfd18452d04c4e52`  
		Last Modified: Tue, 03 Nov 2026 01:01:08 GMT  
		Size: 2.1 MB (2121696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98a6deb41cfbdd3339a00acf62d2090dc9882f112f0c2c412d9694d7b86a1535`  
		Last Modified: Tue, 03 Nov 2026 01:01:08 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
