<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.25`](#logstash81925)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.25`

```console
$ docker pull logstash@sha256:e8047f7653658b0e0a608c428c079b4076477825dea91430f232aa28eece8d30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.25` - linux; amd64

```console
$ docker pull logstash@sha256:286d3c1447c5f64de57b5d2b6b0f6ea5789dd4b8480a6c8c4e3e56743291ac2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.9 MB (533879880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8659223a8bd56903a6782e026edfe7542e59862d8e58cead55a57c9629935`
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
# Tue, 10 Nov 2026 20:14:22 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 10 Nov 2026 20:14:22 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.25-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.25 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
WORKDIR /usr/share/logstash
# Tue, 10 Nov 2026 20:15:03 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:15:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:15:03 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 20:15:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 10 Nov 2026 20:15:03 GMT
USER 1000
# Tue, 10 Nov 2026 20:15:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 10 Nov 2026 20:15:03 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.25 org.opencontainers.image.version=8.19.25 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-02T14:57:15+00:00 org.opencontainers.image.created=2026-11-02T14:57:15+00:00
# Tue, 10 Nov 2026 20:15:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2162889ad5a6f280f13dcb7f1a2d85c31dc63f7ec86c92a66ae14fccbe00b5bb`  
		Last Modified: Tue, 10 Nov 2026 20:15:43 GMT  
		Size: 52.9 MB (52872201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680a9e3c24247487dc4a8a5634fb27701ba2e2942a356c06e7e161325e1ad354`  
		Last Modified: Tue, 10 Nov 2026 20:15:41 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cf86a868d7dec2deee05b31a72a42b51c0250a3aa054f7c5c9be55c9647a03`  
		Last Modified: Tue, 10 Nov 2026 20:15:50 GMT  
		Size: 451.0 MB (450972322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39591352d633c99e15d2d4aa2b09c3345d83f2244ed66649d43962d15a3c040f`  
		Last Modified: Tue, 10 Nov 2026 20:15:41 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4ea28a75821780268516e347388dd128c2a5a82125ead76fc557bf3c82f7f4`  
		Last Modified: Tue, 10 Nov 2026 20:15:42 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cae258548f892717390958fdd963e6cbfaa940e57696075c0812b60c97dfc0`  
		Last Modified: Tue, 10 Nov 2026 20:15:43 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e267dba755681ac6fea0c4a754676bf433f4b44722503da0fd21d9cac741251a`  
		Last Modified: Tue, 10 Nov 2026 20:15:44 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36cb415da5436a9c5677ce7c8a2776369dfe30a10ddcb4df85f382eb53d6d19`  
		Last Modified: Tue, 10 Nov 2026 20:15:44 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a620439a8a6147ba7f4fcf65872dac256a57fcc915455d168d6118d048a163c3`  
		Last Modified: Tue, 10 Nov 2026 20:15:45 GMT  
		Size: 255.2 KB (255187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c7d4eabffe539e507178eacbd929ffc0b3d4591a6f8469cdb897b730ae75dc`  
		Last Modified: Tue, 10 Nov 2026 20:15:45 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7fb6e581b3d14b41b14bfddc4a97d4a3997ba840e640b9b43d7ac917651be1`  
		Last Modified: Tue, 10 Nov 2026 20:15:45 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.25` - unknown; unknown

```console
$ docker pull logstash@sha256:833f73bc009ea73054f11045a17b09038d3df85562cf73dc7585975d9c1e3bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26caab4306d07c194cc933e1fe55b82f5e03b19ffa6b8c19e3fb72cb40aba0ac`

```dockerfile
```

-	Layers:
	-	`sha256:61ffdd1d80eb6e5e381e534f80f55ba9e49830eed4e08742352e7d543c6a2a74`  
		Last Modified: Tue, 10 Nov 2026 20:15:41 GMT  
		Size: 3.6 MB (3603251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24801d5fe979d32b17e80e0e84cdbed42ad9d5509798f3f56084740db99ea87`  
		Last Modified: Tue, 10 Nov 2026 20:15:41 GMT  
		Size: 35.8 KB (35849 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.25` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:77fc21bbd9db48084ab5506ac8b62c9fa598d69272967fecda9c2433b0c13946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.5 MB (533485246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd31b8f1af8b568455d3b73b1bacc2f4152836b9f34f543a28b7b8cb4dc8c7a8`
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
# Tue, 10 Nov 2026 20:14:44 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 10 Nov 2026 20:14:45 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.25-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.25 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
WORKDIR /usr/share/logstash
# Tue, 10 Nov 2026 20:15:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:15:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:15:01 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 20:15:01 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 10 Nov 2026 20:15:01 GMT
USER 1000
# Tue, 10 Nov 2026 20:15:01 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 10 Nov 2026 20:15:01 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.25 org.opencontainers.image.version=8.19.25 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-02T14:57:15+00:00 org.opencontainers.image.created=2026-11-02T14:57:15+00:00
# Tue, 10 Nov 2026 20:15:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaffb319cd5833b8a958bafc43c88c61acaf1e91dc804cbd27324b768c4b5ce4`  
		Last Modified: Tue, 10 Nov 2026 20:15:42 GMT  
		Size: 55.0 MB (55023362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc53e27a19cab13ed139361aeaa2f69c073176eab2459f1f2055c9e2a25343f`  
		Last Modified: Tue, 10 Nov 2026 20:15:39 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc857d9c9bb8c45048018e60e08e833b1d2dbf22e6a2ba9713243c336e1da584`  
		Last Modified: Tue, 10 Nov 2026 20:15:48 GMT  
		Size: 449.3 MB (449254018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae227108ccf561e8c78be684569572f7fe61c2450d304474c41034d7a17a5ac9`  
		Last Modified: Tue, 10 Nov 2026 20:15:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415916984ab0a61e07c60cc05851d6e99f178119b7fdcc796fc2549e986bc05a`  
		Last Modified: Tue, 10 Nov 2026 20:15:41 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e322e9d4331a0aaf0957f48c09017c7c7a9fef8d3c609058a9d9c95e678f3fdb`  
		Last Modified: Tue, 10 Nov 2026 20:15:41 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e79eb381d7b636b950cb2c4eef5faeb3c57d6988540a2f8dffece58580ae55`  
		Last Modified: Tue, 10 Nov 2026 20:15:42 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b400cb3ed3296064a516ac138087db430bc34a5a89c95acfe0a2e2d78a906b`  
		Last Modified: Tue, 10 Nov 2026 20:15:42 GMT  
		Size: 6.3 KB (6296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff2d99e8dc79f112e127e4c6f677300d03080b74fbcb767b96a2759a29cdf4d`  
		Last Modified: Tue, 10 Nov 2026 20:15:43 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5dc5f3d6713a5e1626e5ca332049b78167ee55c9dace056cba47abd111f508e`  
		Last Modified: Tue, 10 Nov 2026 20:15:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c938ce37db9d379c6ed4c383c22f1b95f14da8117c310262af9fe7bf759b9fbb`  
		Last Modified: Tue, 10 Nov 2026 20:15:44 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.25` - unknown; unknown

```console
$ docker pull logstash@sha256:67e2fba046380099702a07b7badc6dd5ee39e42acdaa658b376de3d879aebac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1f23369ca3084b0a9b1021186af003a4ff2f1dc60a75f8991dcdc505724f47`

```dockerfile
```

-	Layers:
	-	`sha256:db064c6db832532eb95fef6d54645e4e136d74ddd506561e777b75ab484db021`  
		Last Modified: Tue, 10 Nov 2026 20:15:40 GMT  
		Size: 3.6 MB (3603676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:313f3d0ffdc6423ecf93e03beb3d5f4b2780fea85728fc7812074ebe731130d6`  
		Last Modified: Tue, 10 Nov 2026 20:15:40 GMT  
		Size: 36.0 KB (35976 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:5ad2150f9f2235264b4f83da05d12586b840ca0bff91674b97b15b5b82030279
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:9976aa69a4631ab9b498baf8143c7e602f7e46084fe0a529e3476b8a7849f8a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526646736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9680aa6d2841f1b2aa5c6c61a5a303c784bb6029f1f413a3650dd3712df0bc19`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:48:57 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:48:57 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:48:57 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 10 Nov 2026 21:48:57 GMT
WORKDIR /usr/share
# Tue, 10 Nov 2026 21:49:00 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:49:52 GMT
WORKDIR /usr/share/logstash
# Tue, 10 Nov 2026 21:49:52 GMT
USER 1000
# Tue, 10 Nov 2026 21:49:52 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 10 Nov 2026 21:49:52 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 10 Nov 2026 21:49:52 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3f14c563e09042e28e980bf6e5fcad85906852b393598187051d950b4961ce`  
		Last Modified: Tue, 10 Nov 2026 21:50:31 GMT  
		Size: 4.8 MB (4762725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ce0e0350c84b7038a6e8cc55cb94552679455a8c6bde87c6430834ed086459`  
		Last Modified: Tue, 10 Nov 2026 21:50:41 GMT  
		Size: 480.9 MB (480937025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd0cc87580a5e68eb98bf9b4b9f073a14cc0a5d90279a7d796bd224f26a10de`  
		Last Modified: Tue, 10 Nov 2026 21:50:30 GMT  
		Size: 6.4 KB (6366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413ca97d5dce6f8aa7a2d323d334730d050ef8bdfc72ec87920159c01e1265ae`  
		Last Modified: Tue, 10 Nov 2026 21:50:30 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a46992809d153fcb78dc8f8686fcd2bb3c8d0c70fb40e99047c528ad0da4e4`  
		Last Modified: Tue, 10 Nov 2026 21:50:32 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4703259f48ce6903123848dec35e0899660eefbe2252d72d9273de70c728146b`  
		Last Modified: Tue, 10 Nov 2026 21:50:32 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46f6462430918e1a5d68d5458d10e70a77792c452f5d8b44b151aae10c26a8d`  
		Last Modified: Tue, 10 Nov 2026 21:50:32 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ff7f8d04f4ea542e1befa687b2400193e05df96b3b2feffbb3d337866a8a70`  
		Last Modified: Tue, 10 Nov 2026 21:50:33 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2378fbc481bc3e15eec16c7c07e42fd2f35aed813b8041856861440e7fb2921`  
		Last Modified: Tue, 10 Nov 2026 21:50:33 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:b38616070a3f33074b51f3a325575916492a8616021dae1d80f033a920fe92de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79ceb69eea29c8ad4abf8a9e472f766d1f2871912784bda365036ab7d6916e8`

```dockerfile
```

-	Layers:
	-	`sha256:a34f93746fd219ed6f1bba0f427d8d8ccfa71a8c1bb3030530993029c46c5efb`  
		Last Modified: Tue, 10 Nov 2026 21:50:30 GMT  
		Size: 2.1 MB (2095694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18f18820fa09281a71f4f398016f1d5f43d9c78ced3bd3e86165cc55697d4a54`  
		Last Modified: Tue, 10 Nov 2026 21:50:30 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:54390730d7b2c10ca454eff422bcd3367475250ac21277cf806e7ddd4498d6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (522962401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a72d572feb59ad8e660226bc08825c2af05dca5973326f7e312658647457887`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:09:23 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:24 GMT
COPY dir:c64a3fab6fbd9c83c22b7c3160855229a2f77503d8810a44260c85bbadecd08b in /      
# Mon, 09 Nov 2026 01:09:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:25 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:25 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:53Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:53Z" "architecture"="aarch64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:53Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:52:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:52:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:52:01 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 10 Nov 2026 21:52:01 GMT
WORKDIR /usr/share
# Tue, 10 Nov 2026 21:52:04 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:52:57 GMT
WORKDIR /usr/share/logstash
# Tue, 10 Nov 2026 21:52:57 GMT
USER 1000
# Tue, 10 Nov 2026 21:52:57 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 10 Nov 2026 21:52:57 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 10 Nov 2026 21:52:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0a776e8b9ceb8729d5974a0a2bf47cc65c21ec4e620ccd8bccf98ac9e21be1`  
		Last Modified: Tue, 10 Nov 2026 21:53:36 GMT  
		Size: 4.8 MB (4755515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eeedaa4bd7217e17c533d3553a655bcfa1086c90f0a818e3c6babf810588d5a`  
		Last Modified: Tue, 10 Nov 2026 21:53:45 GMT  
		Size: 479.2 MB (479213225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f9653999ea2c51a9d15bd2656f0b5de507f84f80d4d9582ea1ce984de93e12`  
		Last Modified: Tue, 10 Nov 2026 21:53:36 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6088565478ef959cbcda3aef3f2475cc8f52f085c0c2b62c33049d09564e9ff`  
		Last Modified: Tue, 10 Nov 2026 21:53:36 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b36d9ad8e16efee67533ba06f33e3666d17feaa3ae2987676f53810b6519df4`  
		Last Modified: Tue, 10 Nov 2026 21:53:37 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29981d3d7e3dac00ae60fcd3497dbdb97649cfa75847916dea7508962a79dac`  
		Last Modified: Tue, 10 Nov 2026 21:53:37 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91f9900d10a8d4380447a3c96fcf0a2ee29b59721c56a7ac857defe82e1bf13`  
		Last Modified: Tue, 10 Nov 2026 21:53:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fa75d80a31f5d31bcd13a815c4b6744147c130a36e21b83e64a8fd9250ee35`  
		Last Modified: Tue, 10 Nov 2026 21:53:38 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e5b636f21ac29e149c9fc5f0c1d1ed568087e0497394bb1e0a7b34f42a7b3a`  
		Last Modified: Tue, 10 Nov 2026 21:53:38 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:8957a81b887c22c49c2e9abb19afb6d8ba359ea416aa3a5cae9710f9aaff4b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6be867d2f5c3a385030f2f1bdc0f784762ce6ffd32586e4975f1f56eee3a08f`

```dockerfile
```

-	Layers:
	-	`sha256:3ad41d9d39fe59978c7469dfefc60519e2620996258b9d0124c1bc1494162343`  
		Last Modified: Tue, 10 Nov 2026 21:53:36 GMT  
		Size: 2.1 MB (2094482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a19d93cbdd94fb26176e5969094b8c36e5ff5ad898eec2f0ea626168454c7b28`  
		Last Modified: Tue, 10 Nov 2026 21:53:36 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:a8395a019078e2ae9fb503da2b2ba9467c3cfc6460e8fff76c437e144d2f1b02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:e77931174570b9965307acd97742c9fff078e4ef96126ced885a9cb6f8b1a3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535230474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b6019aa41f8cf15ef36844ba2a6690b81e3438d8d754f96cc6848485c7f62cc`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:49:05 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:49:05 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:49:05 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 10 Nov 2026 21:49:05 GMT
WORKDIR /usr/share
# Tue, 10 Nov 2026 21:49:08 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:50:02 GMT
WORKDIR /usr/share/logstash
# Tue, 10 Nov 2026 21:50:02 GMT
USER 1000
# Tue, 10 Nov 2026 21:50:02 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 10 Nov 2026 21:50:02 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 10 Nov 2026 21:50:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6a565e582b518ca7842d0b8de68ac2a44ad1ab85c6960028f2e385eca34ef1`  
		Last Modified: Tue, 10 Nov 2026 21:50:40 GMT  
		Size: 4.8 MB (4762680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a51b6f125c909e25cce0064294686fa47c20e5af2ab8002c74c6701e10e6ba`  
		Last Modified: Tue, 10 Nov 2026 21:50:48 GMT  
		Size: 489.5 MB (489520622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296b45944eae91e1fe96d8a3a072d6f8ddcd5ed462cd8bca0cc5aa3b2b74676a`  
		Last Modified: Tue, 10 Nov 2026 21:50:40 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1781242c15f3e82da6e07f981426dada5949ff07758af9df079b41a88c7334`  
		Last Modified: Tue, 10 Nov 2026 21:50:40 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28449760cb7d9c1bab8c441892a11ecfa3b6f543c2f7855741dd87b5a80d78d7`  
		Last Modified: Tue, 10 Nov 2026 21:50:41 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd989f583c5c414d354c45abd3d80d22603c2d39c507d34f473fe307f7a1dd55`  
		Last Modified: Tue, 10 Nov 2026 21:50:41 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f977943e0d180f00338d41691c028b3898233e3dae267d8dd3a935de74ba25`  
		Last Modified: Tue, 10 Nov 2026 21:50:41 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb2b19c1641c11741c8be66b22efda8ffdf96889fe341987e7969ff2d4b2d00`  
		Last Modified: Tue, 10 Nov 2026 21:50:42 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878eb3ac89d60e18a231b0e9aa320d2570af23b9e8d15e874e40562bb750df46`  
		Last Modified: Tue, 10 Nov 2026 21:50:42 GMT  
		Size: 714.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:9d9643df28def6df81a4dfab9a5fbdc69e22d864169906bbb64c4f11d8888f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372f2ba0c66586b3cb65815033f8e8017c46c283f66b330bc9e66335a2f6a59b`

```dockerfile
```

-	Layers:
	-	`sha256:72cfcacef8798549c877fdd7a452dff4e6ac2caa71f33ee2eac97e4d6fc177b3`  
		Last Modified: Tue, 10 Nov 2026 21:50:40 GMT  
		Size: 2.1 MB (2122920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da35b057d825bb1130e8af8424eab673d80dbec4d59d368f8aec339d7df39bbe`  
		Last Modified: Tue, 10 Nov 2026 21:50:40 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:970c4b1d6fba7b117e0aca70e46d2fa5a94e448771bd7f3067b22294daba6f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531555171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8732f5aae8f502b841f96b6410b836166638b981303c128a8ad8d3ca089691f8`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:09:23 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:24 GMT
COPY dir:c64a3fab6fbd9c83c22b7c3160855229a2f77503d8810a44260c85bbadecd08b in /      
# Mon, 09 Nov 2026 01:09:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:25 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:25 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:53Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:53Z" "architecture"="aarch64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:53Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:52:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:52:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:52:01 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 10 Nov 2026 21:52:01 GMT
WORKDIR /usr/share
# Tue, 10 Nov 2026 21:52:04 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:52:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:53:00 GMT
WORKDIR /usr/share/logstash
# Tue, 10 Nov 2026 21:53:00 GMT
USER 1000
# Tue, 10 Nov 2026 21:53:00 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 10 Nov 2026 21:53:00 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 10 Nov 2026 21:53:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec7f0d046f391d85d1fa089ab38c51904778173b48c8faa12972b633970c75b`  
		Last Modified: Tue, 10 Nov 2026 21:53:39 GMT  
		Size: 4.8 MB (4755496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbef62b0f828916dcaed80e60b8c834e6e99fc1902cd64cbe2e3286b2a2c44f1`  
		Last Modified: Tue, 10 Nov 2026 21:53:48 GMT  
		Size: 487.8 MB (487805831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c21231826d45a1d4e477870f9046b2a860021297510631e6bc2b843b6472202`  
		Last Modified: Tue, 10 Nov 2026 21:53:39 GMT  
		Size: 6.5 KB (6537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f431d49febb02569a40d88a10cc234001812db5a6a333931c4350c3844c03f`  
		Last Modified: Tue, 10 Nov 2026 21:53:39 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e660ba5d0eab8bb096b1e335a942de9a57daedbbeda74794ac505d8f7dd3a76f`  
		Last Modified: Tue, 10 Nov 2026 21:53:40 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57641994b5b939f5495e5f14be1b836d34f644ba1345528cce644e64b6593ba1`  
		Last Modified: Tue, 10 Nov 2026 21:53:41 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c00078d205fcd8bece19b181c249e28f5396a5ea26fe8e22fa79af8704a3501`  
		Last Modified: Tue, 10 Nov 2026 21:53:41 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565797960430f005f44ffb5294d274961ed62e796065fe3e13e93605ffd5e3c5`  
		Last Modified: Tue, 10 Nov 2026 21:53:42 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685ba3e8d10bf108f718c40bdcc7753b5d81a47732edd108ec07536ba51b973e`  
		Last Modified: Tue, 10 Nov 2026 21:53:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:cec164f344e035e0171381f6896f99597c08361db5ccd5e87017ad27fa22c800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed35244770f39f7ce0b361c2587d009ecf12683ea337185feeb58133cd08e5`

```dockerfile
```

-	Layers:
	-	`sha256:b3d7035c196f63f25408fd95836092f8e327a81ffad75d973e493c3c6a35915b`  
		Last Modified: Tue, 10 Nov 2026 21:53:39 GMT  
		Size: 2.1 MB (2121708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15081aef5599eb1adec3c344af7bfaae30f18d54a7df3a0bc20367e636b461a2`  
		Last Modified: Tue, 10 Nov 2026 21:53:39 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
