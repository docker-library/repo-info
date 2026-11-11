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
$ docker pull elasticsearch@sha256:51c8960aeff5765e366aa7e2c5fff5d5d9118fbff79a872c0b2c01b987e85bc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6a47416395b5baac793d677d44a01d820fc43bb577b2ffd1711a7a68768cfef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869286505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4cd31f58a8a4e3b677a84ed5f54ae61351c7887d8f554f044e6484ef43cdf9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:39:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:39:51 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 22:40:24 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:40:24 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:40:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 11 Nov 2026 22:40:35 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 11 Nov 2026 22:40:35 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 11 Nov 2026 22:40:35 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:40:35 GMT
ENV SHELL=/bin/bash
# Wed, 11 Nov 2026 22:40:35 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:40:35 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 11 Nov 2026 22:40:35 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 11 Nov 2026 22:40:35 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 11 Nov 2026 22:40:35 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 11 Nov 2026 22:40:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:40:35 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:40:35 GMT
CMD ["eswrapper"]
# Wed, 11 Nov 2026 22:40:35 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9713f82a2c3adabaf66b022a840a4da5c375545eac1f85b3a5bcdac188ca3ce7`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 4.4 MB (4389149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213788769d360ed1fb016e4ebd23506cc29885af725d9c84849fe7b134d48c16`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44daea8f61d9e3ae1f5f793376eb30e059e0866984fff23f68ec8fb2b5d727e4`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f491c20cb92d1cc20291b97c4cb86253e784ca1112a223c211efcf4b8eeb07`  
		Last Modified: Wed, 11 Nov 2026 22:41:47 GMT  
		Size: 824.1 MB (824123329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c983759378f0ba5716125053d27a34cef2deb7a1cbfbf38ac77790126e03df1b`  
		Last Modified: Wed, 11 Nov 2026 22:41:33 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee991292a4255e94d9302d10faf3096016d2e9e09596cd5bf551555d52d90511`  
		Last Modified: Wed, 11 Nov 2026 22:41:33 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b7e2b11b275204178312d5225196f0a0eb76dcb52cbabc0e8faa25d68ee427`  
		Last Modified: Wed, 11 Nov 2026 22:41:34 GMT  
		Size: 75.2 KB (75164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8008e0825e74a5fc7be6aba6b66015b69ee1e472e35c023e52b41dade3c4ab`  
		Last Modified: Wed, 11 Nov 2026 22:41:34 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:6ef7baa6a0e02a679b23cd52bc2c415f2f40ed956c84f3b1fbcf24060a221efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe1897c0ea2968acc738b8781ecede2e59b0cc2e3393175000169c8ed6bb569`

```dockerfile
```

-	Layers:
	-	`sha256:2cf66b01c12bd50fc7bb0f55b929da11125d7fcb0235b9a55f75ec1b697c8e19`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 2.4 MB (2367743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7faba7835b9806e08aa55fc1a46bea1b316d67a2e8d08f6d198b589f995987b8`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:11aa2615a3fde863c7471a247ef8d7426eed2472e7eead72b063021a41e2db53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713884106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebfb2570280a69b49126fb8ccb11397e34d2c801c3c9a5d0c64018188d2f1de`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:08:45 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:08:45 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 22:09:49 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:09:49 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:09:49 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 11 Nov 2026 22:09:56 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 11 Nov 2026 22:09:56 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 11 Nov 2026 22:09:56 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:09:56 GMT
ENV SHELL=/bin/bash
# Wed, 11 Nov 2026 22:09:56 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:09:56 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 11 Nov 2026 22:09:56 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 11 Nov 2026 22:09:56 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 11 Nov 2026 22:09:56 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 11 Nov 2026 22:09:57 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:09:57 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:09:57 GMT
CMD ["eswrapper"]
# Wed, 11 Nov 2026 22:09:57 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff783ee9e4ed7cf76023c4aba665e9b20e0fefba550bf5f1f9e9115ffd94b9f`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 4.4 MB (4383120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34e045640a7db0ae74af38f772ab9f20f6615c3c2c13cb66cd0ce05e379c8d0`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0475b4c7c556959859bd62d1c13cc64eafedb877ce3896255751849e179d994e`  
		Last Modified: Wed, 11 Nov 2026 22:10:42 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca333e15c3797cedd4e9ee9720b2a0d76d902bfc43e247abec33f98329c9c81`  
		Last Modified: Wed, 11 Nov 2026 22:10:55 GMT  
		Size: 670.6 MB (670643025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0d86a2bf6ba4dd356df219a9db93b750d6b43c7447ae14dc787bbd93066b4c`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650404f1e8431a93da4de49df59d78207c686c76c7cca71e10a83c5cc24ec8b`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee602450a576f17e9b035bb25519bf8c0a744e6ad8db934bb0c419edcc4bf3`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 74.1 KB (74100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85322718a97035dbdca713d6243296aec825d469b52adf810051016690b35106`  
		Last Modified: Wed, 11 Nov 2026 22:10:45 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:9f96445db58161abe00e344f8547497772eaf9adba6beb1737b8dc837bd055cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5511a5ec9310588bf3a1248386a78ada1cf89385f56f2b304637caddb9eb9a8`

```dockerfile
```

-	Layers:
	-	`sha256:68be603f93c39088d37ca5b990433bf35c1b9ff242a21424d38c5c799ae6dc2c`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 2.4 MB (2366523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ac49ecaa1c072ebe1ef96aa1be2bccc085c63ee8ca358b608e2c89e8e8cc2b`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:e69cac81b35b20473d2d86455cb9bcb42873c2824cb1ce25835871302d1c18fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f33837831967b44caf74c5fd550b3c5afcfadbba6dc9e912d113d1b45b9f854a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895786960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3593fd80b378359e5ce2eada9bd0ac8365ea1d840efee14d30f9bb1278549a57`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:39:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:39:51 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 22:40:24 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:40:24 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:40:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 11 Nov 2026 22:43:31 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 11 Nov 2026 22:43:31 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 11 Nov 2026 22:43:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:43:31 GMT
ENV SHELL=/bin/bash
# Wed, 11 Nov 2026 22:43:31 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:43:31 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 11 Nov 2026 22:43:31 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 11 Nov 2026 22:43:31 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 11 Nov 2026 22:43:31 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 11 Nov 2026 22:43:31 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:43:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:43:31 GMT
CMD ["eswrapper"]
# Wed, 11 Nov 2026 22:43:31 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9713f82a2c3adabaf66b022a840a4da5c375545eac1f85b3a5bcdac188ca3ce7`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 4.4 MB (4389149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213788769d360ed1fb016e4ebd23506cc29885af725d9c84849fe7b134d48c16`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44daea8f61d9e3ae1f5f793376eb30e059e0866984fff23f68ec8fb2b5d727e4`  
		Last Modified: Wed, 11 Nov 2026 22:41:32 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9812fc739660a497d7d228ff5e0dad1b94f626865247afe0a198f801e52c03`  
		Last Modified: Wed, 11 Nov 2026 22:44:44 GMT  
		Size: 850.6 MB (850623785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed28499a3626e20aae6582cd5d4b2279f87c01ad8cce95e533981bbf4a1bcacc`  
		Last Modified: Wed, 11 Nov 2026 22:44:29 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d445787a8fe0bcbf391a1c973235ac887ea7cc9f239bbc7c6b9b20bb706c3c`  
		Last Modified: Wed, 11 Nov 2026 22:44:29 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29744f433d45406e6b746beb5ea9c73b2b4503149d08a50f8a98d7416ca1b684`  
		Last Modified: Wed, 11 Nov 2026 22:44:29 GMT  
		Size: 75.2 KB (75166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4b0e0917bbbca2afe171c2f22fd6900271eedacd05c01c2655a5d8e96cec2f`  
		Last Modified: Wed, 11 Nov 2026 22:44:30 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:7397e13ff20e8c90e14ca557f6cbe398f9b18ebea50a3ccbc40228e13f6f7eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1567b293f0694dbdd56e6b09673999359f5a1a21cd1f80cb26bb86cf58bf4476`

```dockerfile
```

-	Layers:
	-	`sha256:b23043dc6efc03fbd00aa63ca00d7ae1b41543e09c9b36b26c521a60295c0081`  
		Last Modified: Wed, 11 Nov 2026 22:44:29 GMT  
		Size: 2.4 MB (2418824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9670c74cfab00f7b8f4d891b964318efcef01754ec7feb8b9032629656ecb29d`  
		Last Modified: Wed, 11 Nov 2026 22:44:28 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:768559917f7d55f8b13b5608bb948f100a8b8de30a2805b991ee3121c3c5de50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740332875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc417139a18b532406b045a3aad37ded55cddf69b16f4f4e1b04bb77dd7a8a0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:08:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:08:52 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 22:09:55 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:09:55 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:09:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:10:03 GMT
ENV SHELL=/bin/bash
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 11 Nov 2026 22:10:03 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 11 Nov 2026 22:10:03 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 11 Nov 2026 22:10:03 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:10:03 GMT
CMD ["eswrapper"]
# Wed, 11 Nov 2026 22:10:03 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7368f632d35361508e691e3f7c8b67e726c05140b69a3c8f84d5c6ea0dbf6760`  
		Last Modified: Wed, 11 Nov 2026 22:10:50 GMT  
		Size: 4.4 MB (4383076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99422999f6386ee29ada63f19a435c8f945db63026a26aedf11a9d7f2cab14fd`  
		Last Modified: Wed, 11 Nov 2026 22:10:49 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07fe4bfa0db12cc37fb406da8580027c026397f91ae1c951129f229e5ad03f0`  
		Last Modified: Wed, 11 Nov 2026 22:10:49 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0d6849cb7d133ffcf7ba1354500d4c3130d4875b32d3d81cd4daa318846ce1`  
		Last Modified: Wed, 11 Nov 2026 22:11:01 GMT  
		Size: 697.1 MB (697091829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d00ad11b19ff322587fc6078f3e03a5b97a5f99b355038f52f8b5d439feb773`  
		Last Modified: Wed, 11 Nov 2026 22:10:50 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:406f49b5edc40d563711abf93c7455fd693577d1d0f1bc8a54a2b9cf77b52b51`  
		Last Modified: Wed, 11 Nov 2026 22:10:51 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6715b2edc6cae488be36ce5ceec5f712223464e60fdfc79fc530cc496e2c6b4`  
		Last Modified: Wed, 11 Nov 2026 22:10:51 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010deda0fc6871200bfedd62845f23723a8059b3b78014b43b8d884e29913fb7`  
		Last Modified: Wed, 11 Nov 2026 22:10:52 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:1f4b5001babc6e65dbad43a25871005b3f493a860c504a89ae584ffc3ffe740f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2931ca3389bf57e9d4bdf23a1a37ca5ec414b0dec67f2b02cdf7438baac5a49e`

```dockerfile
```

-	Layers:
	-	`sha256:84b67bf2526c385d1f8c2e50471a3153aa256d8ec7f583173aeb58f13dbfc605`  
		Last Modified: Wed, 11 Nov 2026 22:10:49 GMT  
		Size: 2.4 MB (2417604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed783c7e47bdef7bcc37eeebb3d7e74047c249c0b2640ec7d257578f3c5afcf4`  
		Last Modified: Wed, 11 Nov 2026 22:10:49 GMT  
		Size: 34.0 KB (33964 bytes)  
		MIME: application/vnd.in-toto+json
