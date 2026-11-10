<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.25`](#elasticsearch81925)
-	[`elasticsearch:9.4.8`](#elasticsearch948)
-	[`elasticsearch:9.5.5`](#elasticsearch955)

## `elasticsearch:8.19.25`

```console
$ docker pull elasticsearch@sha256:d77dfeb18e120145d0d686f9143d55021fe224e679eb695de91e7486c5b3da56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.25` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2423449607d1ca97ab12f01100f03b0dfcccd13d02b680c69f1b19d3097714a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.4 MB (722416056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f33f615cb3199b8df48fb5782997c5122381a8ad4d3658f5e3505ba182a62d4`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 10 Nov 2026 20:14:08 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 10 Nov 2026 20:14:09 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 20:14:09 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:14:09 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 10 Nov 2026 20:15:00 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 20:15:00 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 20:15:00 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:15:00 GMT
ENV SHELL=/bin/bash
# Tue, 10 Nov 2026 20:15:00 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 20:15:00 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 10 Nov 2026 20:15:00 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 10 Nov 2026 20:15:00 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 10 Nov 2026 20:15:00 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 10 Nov 2026 20:15:00 GMT
LABEL org.label-schema.build-date=2026-11-05T11:37:05.670595677Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=104cb8651ae63460f8147c582dcdbf5c38451712 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:37:05.670595677Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=104cb8651ae63460f8147c582dcdbf5c38451712 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Tue, 10 Nov 2026 20:15:00 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 20:15:00 GMT
CMD ["eswrapper"]
# Tue, 10 Nov 2026 20:15:00 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ced6cd1dd48aa20d68c8fc33fcbd8877a68959c9e498930eca10d8acb4e7e6f`  
		Last Modified: Tue, 10 Nov 2026 20:15:54 GMT  
		Size: 8.8 MB (8793584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d666b1786c70f25af621d24e6783e109d352fed9c216462cf62137e8d54dc3`  
		Last Modified: Tue, 10 Nov 2026 20:15:53 GMT  
		Size: 3.5 KB (3536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4ac774c614bfa9bb37dea1ae344b7bdf7f0da130bd63fb6b46969e51e14353`  
		Last Modified: Tue, 10 Nov 2026 20:16:05 GMT  
		Size: 683.6 MB (683578940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda85fd56f58c269eeb1921c1d9512658ee7227f8ff962ce7825d95ee0d76ec`  
		Last Modified: Tue, 10 Nov 2026 20:15:53 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750c2043315e7faf57a9ea54661c3111cde18acda895af17cd13061a67093b58`  
		Last Modified: Tue, 10 Nov 2026 20:15:54 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f45a9909f1278066d8f56dba759aaca40ae8b83986f59632b408dbef5bb985`  
		Last Modified: Tue, 10 Nov 2026 20:15:55 GMT  
		Size: 164.2 KB (164198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb24f0358594ec2eddb6a4663971a38aaaab827c3ae90f468c56eda6ea8a7a1`  
		Last Modified: Tue, 10 Nov 2026 20:15:55 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2a28a58814f65fb1cb6bb4ffe6263bf2315cded7fe507684ba0bba5fbe9c97`  
		Last Modified: Tue, 10 Nov 2026 20:15:56 GMT  
		Size: 96.5 KB (96498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.25` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:beb3db6d7520aa16177954cb17402f7321892c2868e2d18797bd4c4e999f58fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ebcaef174e6906ac6b5f6a1b16629beed432f9a9c53e3f7a494c39e631e7e6`

```dockerfile
```

-	Layers:
	-	`sha256:682d2377ac2605fbbb927edba664aa1a4892c52df81328a76dab2534ce19fe5f`  
		Last Modified: Tue, 10 Nov 2026 20:15:53 GMT  
		Size: 3.2 MB (3186970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d2403454a63e284afbaa03db93c57916ebd9cd78db3c96c0edf1ee13fe79c5`  
		Last Modified: Tue, 10 Nov 2026 20:15:53 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.25` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:a892279fd72b2bd759b05b0109fa1b9c8d39b2eacb5b276021b1ca4e03fe0f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.3 MB (570329605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2022010510262dfebd16dae9095ccec0de824b90c8a3c55f08afaaa02df40b`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 10 Nov 2026 20:14:44 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 20:14:44 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:14:44 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 10 Nov 2026 20:15:25 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 20:15:25 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 20:15:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:15:25 GMT
ENV SHELL=/bin/bash
# Tue, 10 Nov 2026 20:15:25 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 20:15:25 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 10 Nov 2026 20:15:25 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 10 Nov 2026 20:15:25 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 10 Nov 2026 20:15:25 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 10 Nov 2026 20:15:25 GMT
LABEL org.label-schema.build-date=2026-11-05T11:37:05.670595677Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=104cb8651ae63460f8147c582dcdbf5c38451712 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:37:05.670595677Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=104cb8651ae63460f8147c582dcdbf5c38451712 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Tue, 10 Nov 2026 20:15:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 20:15:25 GMT
CMD ["eswrapper"]
# Tue, 10 Nov 2026 20:15:25 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7144284acce3fccd99be9bb02be3486d520e5837dcea8a53596429f762b69cfe`  
		Last Modified: Tue, 10 Nov 2026 20:16:05 GMT  
		Size: 8.7 MB (8651985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82dbc83e4bf288ac3be8cf179a531425213b3a1b7569947cb17a2e51b1a24727`  
		Last Modified: Tue, 10 Nov 2026 20:16:05 GMT  
		Size: 3.5 KB (3531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3890bed80e1992ff7df06c1aca9ccc13f0c686d5be8ee21e1142524a95fee383`  
		Last Modified: Tue, 10 Nov 2026 20:16:15 GMT  
		Size: 532.5 MB (532465514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25911b5f751a12b5d608e7a0413fc7625095756b459ad0f1d4f2f826f5b1d9e8`  
		Last Modified: Tue, 10 Nov 2026 20:16:05 GMT  
		Size: 9.1 KB (9104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a94db33a5a60a30cacce3899604c2e3c9ce00e6ed7c6e534442f0ea826cda7e`  
		Last Modified: Tue, 10 Nov 2026 20:16:06 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f7502e5b2be845ec6c98cef5a9b1d7bc0289b8899de997a00d2ecc64196fc1`  
		Last Modified: Tue, 10 Nov 2026 20:16:07 GMT  
		Size: 160.7 KB (160691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c003125c1dd89db1e1c9eec93d375b3f3684766b971ece4656948080067003ac`  
		Last Modified: Tue, 10 Nov 2026 20:16:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebd1944f496ac6fd4d6405c8faa20fe1ca905ea986290e049bc404908d4401e`  
		Last Modified: Tue, 10 Nov 2026 20:16:08 GMT  
		Size: 96.5 KB (96500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.25` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4c04ccf2d8d56f46b2a57d2bd454bec3379e6446a7ebc66ec2f065311fe93042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06b21083e211a17c756fd432359b1310d92a152d266a12aa23bb1e255ca52ac`

```dockerfile
```

-	Layers:
	-	`sha256:f9027a6032fcbcb636741eddcc4dbf37c868b2469e97f2d098fda2e493460a51`  
		Last Modified: Tue, 10 Nov 2026 20:16:05 GMT  
		Size: 3.2 MB (3187383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5807401fc6c505e5b4157e0d729ea811e39b3e09d152969a4c8cedb8bb06f805`  
		Last Modified: Tue, 10 Nov 2026 20:16:05 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.8`

```console
$ docker pull elasticsearch@sha256:031067a0f8d755d52439c84376bce259b6883c2733b5939c080b61d28ad7af67
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6ffd398c8d8115dd4d9a5563857990accaf8e8f6fee8f14485d4e7c06b54ce77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869295628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759ec82ca48bcdf539e649561ee1d7c0ae7e4f129164c57572e3d12e493f596d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 10 Nov 2026 21:48:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:48:52 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 21:50:19 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:50:19 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:50:19 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 10 Nov 2026 21:50:30 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 10 Nov 2026 21:50:30 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 10 Nov 2026 21:50:30 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:50:30 GMT
ENV SHELL=/bin/bash
# Tue, 10 Nov 2026 21:50:30 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:50:30 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 10 Nov 2026 21:50:30 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 10 Nov 2026 21:50:30 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 10 Nov 2026 21:50:30 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 10 Nov 2026 21:50:30 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:50:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:50:30 GMT
CMD ["eswrapper"]
# Tue, 10 Nov 2026 21:50:30 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eabeeba3066fee144bc1b18088afe1465dcd3de5bd48d05891b680ad2c55bc6`  
		Last Modified: Tue, 10 Nov 2026 21:51:27 GMT  
		Size: 4.4 MB (4400046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ce77c7754b59e7ca53e2d1c0841d332c14e8d04db2ba43dd1247b7e347cb9f`  
		Last Modified: Tue, 10 Nov 2026 21:51:26 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1adfc6b2643c0bf87cb1730a23d81d582b8c4f71df59193446650e75c3b89b6c`  
		Last Modified: Tue, 10 Nov 2026 21:51:26 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464e0b3e90ff7da2d532dc1ea3204f874bb268be7ca58194bf395bc239325eed`  
		Last Modified: Tue, 10 Nov 2026 21:51:40 GMT  
		Size: 824.1 MB (824123435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c97e0155176d704140dd39c85ef49ca66fdc2b8d7ee8ea5f9778915dceb56d`  
		Last Modified: Tue, 10 Nov 2026 21:51:28 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae583444c622b0ea4ef7caa9b3f5d64eb98c47e629da1d9565e6d55b52d03cbe`  
		Last Modified: Tue, 10 Nov 2026 21:51:28 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a11c7a5466870572482d292e5cdd6adead5e07da713d670ddd29561b1fe3ea6`  
		Last Modified: Tue, 10 Nov 2026 21:51:28 GMT  
		Size: 75.2 KB (75184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6368d35aef92513dd4be1d0b99e6bdc41171fc7a3b77d40230baa25428c968`  
		Last Modified: Tue, 10 Nov 2026 21:51:29 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:d12875978c85fa0a02bcdf68a42536d910e51f4ae3953109dbbe7a5f7c407379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4b85dec321984ab9a4bb9d07ac03153fca8a763f5c95e463df25c6943a51f9`

```dockerfile
```

-	Layers:
	-	`sha256:be8e03fc74ee344243b40a24e1bae94e7c3f2de1af33d3f4a4d043797277f20e`  
		Last Modified: Tue, 10 Nov 2026 21:51:27 GMT  
		Size: 2.4 MB (2367871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43556210ea23da2ac65eed01795952401111b555d2276d6498c434ef98e27d0`  
		Last Modified: Tue, 10 Nov 2026 21:51:26 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:871b25ab65e7e2b7a8336eb962b44de505ea8157bf5067dea7be2aabe085ca6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713853436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e348c80dc1afa4c5081e6806d95d7be98b55f01fbce90c5c1206957d464a5b52`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 10 Nov 2026 21:51:54 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:51:54 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 21:52:59 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:52:59 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:52:59 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 10 Nov 2026 21:53:07 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 10 Nov 2026 21:53:07 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 10 Nov 2026 21:53:07 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:53:07 GMT
ENV SHELL=/bin/bash
# Tue, 10 Nov 2026 21:53:07 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:53:07 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 10 Nov 2026 21:53:07 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 10 Nov 2026 21:53:07 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 10 Nov 2026 21:53:07 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 10 Nov 2026 21:53:07 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:53:07 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:53:07 GMT
CMD ["eswrapper"]
# Tue, 10 Nov 2026 21:53:07 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab061374fc7e6150fa65eed430a04ddf64e086c3d0c2f8aeaf0193df6f8cc330`  
		Last Modified: Tue, 10 Nov 2026 21:53:52 GMT  
		Size: 4.4 MB (4393084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d083027918c29a5bda0856d59768126abb52f4519b5c3980b128984199d7ca0`  
		Last Modified: Tue, 10 Nov 2026 21:53:52 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85956e856fd8dc1fb53a6e1d8869f97536dd37f63baf74843866dc373c1c524`  
		Last Modified: Tue, 10 Nov 2026 21:53:52 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd2c52da4cec7b7e92c0790e1374bfa4c473a2d48e2b5cbce8a647004edba8d`  
		Last Modified: Tue, 10 Nov 2026 21:54:05 GMT  
		Size: 670.6 MB (670643027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e0ddecadc19b97e6d697b28cd618be20eea85c4e37f6eb1a0af5139a783f2b`  
		Last Modified: Tue, 10 Nov 2026 21:53:53 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df67bc10910c648e29ddd0afe4157a2084d1bd4956147adc258a19f7c9b5fdff`  
		Last Modified: Tue, 10 Nov 2026 21:53:53 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdc46c1bcd9355df0ffa675f8a003246c58b750c855ad45a192fb4da00537c4`  
		Last Modified: Tue, 10 Nov 2026 21:53:54 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5793af5589ce931ce6d95d8d35aaad6bbdd3aaa7b53b7d3b674314692420b168`  
		Last Modified: Tue, 10 Nov 2026 21:53:54 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:526c496779f39a10d30e4f6ae1e4c8854f4e864bd78d95d051648b8889b70d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195ced4ad8d50e5aaf3302ba434ddc59b661b30aa482155f028ac8e14e6104ab`

```dockerfile
```

-	Layers:
	-	`sha256:a1474041420cdade54a97310c28a54906ba172a05efcf2bc04f77332eef798f4`  
		Last Modified: Tue, 10 Nov 2026 21:53:52 GMT  
		Size: 2.4 MB (2366651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08139e23e42145b0582e9377b214725526ceceedd3c62397b783a6205909fed8`  
		Last Modified: Tue, 10 Nov 2026 21:53:52 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:bd37ab2d138676a5a3ce2e2e52c2fc4584ffd85f11655081fc4b6b2dcdc7763c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:8ce828f2ece8af300055f76d24e2035f5503613db02d8898d1057a120d82564e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895796028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c133f11cb1f72951f4e51ee7094ef17ec36cbb44afcfc685b2856d9fd300f4`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 10 Nov 2026 21:48:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:48:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 21:49:25 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:49:25 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:49:25 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 10 Nov 2026 21:49:36 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 10 Nov 2026 21:49:37 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 10 Nov 2026 21:49:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:49:37 GMT
ENV SHELL=/bin/bash
# Tue, 10 Nov 2026 21:49:37 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:49:37 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 10 Nov 2026 21:49:37 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 10 Nov 2026 21:49:37 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 10 Nov 2026 21:49:37 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 10 Nov 2026 21:49:37 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:49:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:49:37 GMT
CMD ["eswrapper"]
# Tue, 10 Nov 2026 21:49:37 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be85db5fa35229676d01a3eb4b12b7715ed2acc9f22af52aa3fcf156e49e323`  
		Last Modified: Tue, 10 Nov 2026 21:50:31 GMT  
		Size: 4.4 MB (4400069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4be9dd8eb761a63e9bb6bbd52f9415269cf4908422b65d515d91f1b02a3d22`  
		Last Modified: Tue, 10 Nov 2026 21:50:31 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edf6334a484ae44f8e0a895fb0115e8da2abcc1b78404c763fc89423c3455f5`  
		Last Modified: Tue, 10 Nov 2026 21:50:31 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6d3acf8ca6da21e5ba824e80a8cb3ed6e5a2fc8c0080639805265bccc84731`  
		Last Modified: Tue, 10 Nov 2026 21:50:46 GMT  
		Size: 850.6 MB (850623818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36be2ca22f58b0f26b38103a18fca15a57f139212d87e0b693ec1dd9b077961`  
		Last Modified: Tue, 10 Nov 2026 21:50:32 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0fad6e602ba9e6dde44e1c6d61f62cd5abd35356ec57ae68ef8c7149ab44bf`  
		Last Modified: Tue, 10 Nov 2026 21:50:33 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc048c74fdee4f6369ec51f09563f457255869c4bdb24f2e1cf19f50f82e95da`  
		Last Modified: Tue, 10 Nov 2026 21:50:33 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8cf51edece126e5d327978e6e88a1f273ee64eae6c54c8e646d21ed5f19ad2`  
		Last Modified: Tue, 10 Nov 2026 21:50:34 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c1d2a58b97be7564ba2c5a888b3c937bc7ca45684d692f6c7a607e64ec8f5dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9d819cfdc8d4e40eae32c864589ee3acb8930c2f918eaa049962575ac65aeb`

```dockerfile
```

-	Layers:
	-	`sha256:3e6878f4217bfe2895d4e371958b55f13cc40339b49b0358b920c6d61b4c48bf`  
		Last Modified: Tue, 10 Nov 2026 21:50:31 GMT  
		Size: 2.4 MB (2418952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb16bf7e0d66b93e8ff04b9614a5641931e788a066b7849d27b358e6fa46b5a0`  
		Last Modified: Tue, 10 Nov 2026 21:50:31 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:c71a83debc6545a341dd6d76615560af6c470fc2334173a8a39e900c1d6afdfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740302206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40912c1aed25834a20e5f6e377cd90898ff64986ac97bd5c218f240ec288ac4`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 10 Nov 2026 21:51:55 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:51:55 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 10 Nov 2026 21:52:28 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:52:28 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:52:28 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 10 Nov 2026 21:52:36 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 10 Nov 2026 21:52:36 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 10 Nov 2026 21:52:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:52:36 GMT
ENV SHELL=/bin/bash
# Tue, 10 Nov 2026 21:52:36 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:52:36 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 10 Nov 2026 21:52:36 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 10 Nov 2026 21:52:36 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 10 Nov 2026 21:52:36 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 10 Nov 2026 21:52:36 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:52:36 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 21:52:36 GMT
CMD ["eswrapper"]
# Tue, 10 Nov 2026 21:52:36 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b33180be31987fceabf6173d0b02935d26460b14652dfb6497d8c6b0e373c6d`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 4.4 MB (4393089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9def5b3ae92e8971b26d90317bc860cd707d437741c11c1d30f18329a733a5`  
		Last Modified: Tue, 10 Nov 2026 21:53:22 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305e52b903f2c77b07d07a90091924dcda96a9a76577b4167b63916156bf0810`  
		Last Modified: Tue, 10 Nov 2026 21:53:22 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c195369e5b4334240c508db8a0a614640606257e2ec1d64a1433482b19b1ba1c`  
		Last Modified: Tue, 10 Nov 2026 21:53:34 GMT  
		Size: 697.1 MB (697091798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716c2f959596a9faadfdb9527fdecfe3aa7834e42a3bd61ea36bba4c4c5d8f46`  
		Last Modified: Tue, 10 Nov 2026 21:53:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326de70600e0fb9b3a0698a744afaca6189c5efb6053b3f7a6cac3be83563090`  
		Last Modified: Tue, 10 Nov 2026 21:53:24 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c1df026fc77beb29f05e23a838b61bf3b6d97d302958cada7e4680d776a57f`  
		Last Modified: Tue, 10 Nov 2026 21:53:24 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556ef2f31f3be7f074c74c0163112f99e3c47ab9fa43203ae82559bf70994db1`  
		Last Modified: Tue, 10 Nov 2026 21:53:25 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:13c76d284512b3250077a717f27de38f6eae32bb57a141c7c1f380a18360fd8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87604d661494eb8ec7b2caa74ab7e8486ebef4c1cfd77b8e7070fdbf8cb405b`

```dockerfile
```

-	Layers:
	-	`sha256:b8fa544599039393e9c6c399d941fe0466889d9708fed86a2b1a69277ce18137`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 2.4 MB (2417732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119aa6d2e6625d2c1fa991eb2129533fb3d2d2c1145a86ebceaa6683a201d0bd`  
		Last Modified: Tue, 10 Nov 2026 21:53:23 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
