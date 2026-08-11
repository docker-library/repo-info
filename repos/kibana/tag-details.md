<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.19`](#kibana81919)
-	[`kibana:9.3.8`](#kibana938)
-	[`kibana:9.4.4`](#kibana944)

## `kibana:8.19.19`

```console
$ docker pull kibana@sha256:8ab9dd2abb30a44d93f997125170ac372a6365bddb356629b3a83a7048864817
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.19` - linux; amd64

```console
$ docker pull kibana@sha256:b258e1214e1ad92b35439b8e9451019962e8fc21cacff3baff446157232299a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.9 MB (456870579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67e09e6b37ac86379d57e66711b80261ff2973a25c306d1454fa18e152c28eb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:12 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 01:41:12 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:35 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 01:49:36 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:49:36 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:49:36 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:49:37 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 01:49:38 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 01:49:38 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 01:49:38 GMT
LABEL org.label-schema.build-date=2026-07-15T18:11:08.890Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T18:11:08.890Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 04 Aug 2026 01:49:38 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 01:49:38 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 01:49:38 GMT
USER 1000
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8855057b9aaf649765b137c0529d3bc7edee84ed9bd2e2ab6b573f25f55ed6`  
		Last Modified: Tue, 04 Aug 2026 01:50:39 GMT  
		Size: 11.8 MB (11800612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41e4714d4549248d9bc3178b977d1c0ce62904637c5d5a89bf9a30fc3b62ca3`  
		Last Modified: Tue, 04 Aug 2026 01:50:47 GMT  
		Size: 398.7 MB (398674855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c288d0b1cbbe30a4e4fb2685a12ad7e962802d9200d71144eb5ae77cfc0e8fc`  
		Last Modified: Tue, 04 Aug 2026 01:50:38 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1155aa620b603e89341cce5e5d756bb2b18ffa052799eb38ab8651ac88ac412`  
		Last Modified: Tue, 04 Aug 2026 01:50:39 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bf35f83cdb39607126e90c848a1650979c6719b11adeaf37763eaa62235418`  
		Last Modified: Tue, 04 Aug 2026 01:50:40 GMT  
		Size: 5.2 KB (5239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b179ddc5132c642e3730b862ab0aa7117759b221abe0c105757b7f9bc48a8ba`  
		Last Modified: Tue, 04 Aug 2026 01:50:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcc97f2c678efcfa4039b1f57a5c60acd8e17fabd410bccd161568f05c59911`  
		Last Modified: Tue, 04 Aug 2026 01:50:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d95fad5c77483a4ed52d299984b0f0c0f63e18443a9655634e6190a2c1dc3cc`  
		Last Modified: Tue, 04 Aug 2026 01:50:41 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce45537fab10a996ad6a3ce24f5791bac9edfd4c74a05b6923b27b895e6e191d`  
		Last Modified: Tue, 04 Aug 2026 01:50:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066a41db6fc125cd2fbbd2902fb3bc232ac43731763869da6cd6061814a74428`  
		Last Modified: Tue, 04 Aug 2026 01:50:42 GMT  
		Size: 161.7 KB (161743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e69e4f5b54aa3f0b6c62b47833f5321d0f05398fb4604abdacb9290841eef8b`  
		Last Modified: Tue, 04 Aug 2026 01:50:43 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.19` - unknown; unknown

```console
$ docker pull kibana@sha256:9fbba9055160d8e85805925ba58bd94af0d2746a7d15753c0d78e1415414b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b295ef80a4ea4759726e6fc390cfc3b3d5b5e325c677777d79e8c22d0147cc`

```dockerfile
```

-	Layers:
	-	`sha256:efb37a1b28c5ac1ad21667acf51cf3a470754347c6910eb588a551a1577bddaa`  
		Last Modified: Tue, 04 Aug 2026 01:50:39 GMT  
		Size: 4.9 MB (4912695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43aad106522a79199bbb303100136f7e894043e7b79b6a5b888a48ea07a0803b`  
		Last Modified: Tue, 04 Aug 2026 01:50:38 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.19` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:6c277b9df1128ad0bf77e18ceebccdf6d6cdfbb683122641b9f1125c08dcd472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.5 MB (466532554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee019f0d6ef9b40d75c12e4ace1414f4a0b4d608e9961926f2d054d7c3de64a`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:21 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 01:41:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:07 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 01:48:08 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:48:08 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:48:08 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:48:09 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 01:48:10 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 01:48:10 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 01:48:10 GMT
LABEL org.label-schema.build-date=2026-07-15T18:11:08.890Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T18:11:08.890Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 04 Aug 2026 01:48:10 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 01:48:10 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 01:48:10 GMT
USER 1000
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f93b45a6dfc5c4d86aa5f3fa2e414ee06a49888844963f18f51e3ed6b9c4516`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 9.4 MB (9411326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a25c432b2e67129f02c61e82d0110e5a14c8a553f3a809ea934119a93da865`  
		Last Modified: Tue, 04 Aug 2026 01:49:27 GMT  
		Size: 411.6 MB (411594320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e8511b1840150e2f34bd844bb402b1e7731dd56ddff50f8eaca825f1d0661f`  
		Last Modified: Tue, 04 Aug 2026 01:49:19 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621df03d47a31d07a688ad2e0b88a35f6a76d2d4cc12ed4c3720fedbdedda289`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958a860efb81715e1b744219feb857d94a45d407685c851da225e6dc17398244`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26981d2b27ab23760f60459e7d9bd7b4b7abb6f9a9c49f8c958e3bf802dfa47d`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd21b16616e3acfe93650b2aae721ba8763f5bccebb73f83194d6387dd4e86a`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fc3b05a04503e2bad33f09cafdd52e54ab0b17272b1762b7d148a882ce9ade`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b646380b9f7d84b51dc172620e8941c76fd460621a104456c07f2153f4e7313c`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021cf8bdfbde10fbbe38d94bb3cb500d849e55ce26100330261db7a13da53f5c`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 158.3 KB (158261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc5a3fca9a916acac07d2626f726f26c96dd52a352bef324adda72a622d9300`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.19` - unknown; unknown

```console
$ docker pull kibana@sha256:ced675993d1d20a25457be19dafa87763751e0e43a418678b6ab7b3b2bcd2789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4954922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e164877f8b7073cf22f5d6dc226d363a0fb325b529ead764341697a6030a17`

```dockerfile
```

-	Layers:
	-	`sha256:64fba36e8f735ae38be445aa0fef4c7512197adc927bf360149face01f7510e8`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 4.9 MB (4913759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f5184b93a88713a0e4404eec925a923ce7b5e13f2697a5b88d392f16ee95cd3`  
		Last Modified: Tue, 04 Aug 2026 01:49:19 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.3.8`

```console
$ docker pull kibana@sha256:145586df0e1b5983d870a9416ff0f5e8f8f2798ec196ee64cb7db6f8a424adc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:e84c26bc59ece7f71852c614699621f098c325b54b1d8e0d9903a102ccc2de19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466032893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f82f1505af8ebe0ecc214dd6d03dd610b3ee96489d35ad2d8f135bd04bb88fc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:51:38 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 11 Aug 2026 17:51:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:59:31 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 11 Aug 2026 17:59:32 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 11 Aug 2026 17:59:32 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 11 Aug 2026 17:59:32 GMT
RUN fc-cache -v # buildkit
# Tue, 11 Aug 2026 17:59:32 GMT
WORKDIR /usr/share/kibana
# Tue, 11 Aug 2026 17:59:32 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 11 Aug 2026 17:59:32 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 11 Aug 2026 17:59:32 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:59:32 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 11 Aug 2026 17:59:32 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 17:59:33 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 11 Aug 2026 17:59:34 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 11 Aug 2026 17:59:34 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 11 Aug 2026 17:59:34 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Tue, 11 Aug 2026 17:59:34 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 11 Aug 2026 17:59:34 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 11 Aug 2026 17:59:34 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 11 Aug 2026 17:59:34 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 11 Aug 2026 17:59:34 GMT
USER 1000
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d6bd35dd58458b5c53e35267f3548c4c07a8e6e5da5604eb4651bc998f9f39`  
		Last Modified: Tue, 11 Aug 2026 18:00:29 GMT  
		Size: 19.3 MB (19329740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f15e7f777013bc94a4a3f31baee7c5b1e362773db405ed8f504aa1cdd0babe6`  
		Last Modified: Tue, 11 Aug 2026 18:00:37 GMT  
		Size: 389.4 MB (389435990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bcd53018865495c066ba900234f528ee4eb461023a1dff8a25ff226153d9cdc`  
		Last Modified: Tue, 11 Aug 2026 18:00:29 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4dd699f82532cb26d94be7721463c6718a70b19093197db1b98306339d86765`  
		Last Modified: Tue, 11 Aug 2026 18:00:29 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f534ea8f4007a2a9dec91fddbc8225e205ab3c2c4bad1385eab278c874d7aa9`  
		Last Modified: Tue, 11 Aug 2026 18:00:30 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f401bb37123fcccee9ef50be9339e1a72ffd4e13495ee284e76992139e62505`  
		Last Modified: Tue, 11 Aug 2026 18:00:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83e3e0f650302d7e2bd0e60cbbbdc907124c6fa86645fa1943d10a724969ee8`  
		Last Modified: Tue, 11 Aug 2026 18:00:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae4b2c6dd83659e2c2e7bd08071f1e3167459581bf06093c107dfe39e38aeb3`  
		Last Modified: Tue, 11 Aug 2026 18:00:33 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2b723f52ef9627e24910e4578bc8e325838fb1faec118eb37637113733edf8`  
		Last Modified: Tue, 11 Aug 2026 18:00:33 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7510ca4b6069fc6ec6c1adf75ac4aaa74c868f3f17cb38295174ca4bbcde6d`  
		Last Modified: Tue, 11 Aug 2026 18:00:33 GMT  
		Size: 74.5 KB (74543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a466016d9b93955d7dcf8a7d2e395016d9414aa9ebe06a110a0120295a7f65`  
		Last Modified: Tue, 11 Aug 2026 18:00:35 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cf8c614b5e93a74457c83fb9fc590837365b8bbe763aea8c1b9649920c61ff`  
		Last Modified: Tue, 11 Aug 2026 18:00:34 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:b0ded8d824e28b79e9dc40b7cca879b588ac51c22f32fb20b74622e2a69034f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad84c762c69a2daa6b50a60da139036cdb26bb6291d06832ba2c62a43dd2996`

```dockerfile
```

-	Layers:
	-	`sha256:7368a440ff6a4d69ceb15c6160ac1f0b5fe0f529b4cfae7ed685bc72d2c4cad9`  
		Last Modified: Tue, 11 Aug 2026 18:00:29 GMT  
		Size: 5.8 MB (5766500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c559582ab7a32dda9e3a378dedc1529b096c7eb101d60ab2dad92575656b9152`  
		Last Modified: Tue, 11 Aug 2026 18:00:29 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:3eea8ea11adbb4f37548eb29a23c2fd0b7506c5fe4121f7f2bb7844c74764b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.9 MB (476924662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f90f9339efddba9d1b8658153576e92b79886e182308f93196adeaa6e614f31`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:15:01 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 05 Aug 2026 18:15:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:21:51 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 05 Aug 2026 18:21:51 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 05 Aug 2026 18:21:52 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 05 Aug 2026 18:21:52 GMT
RUN fc-cache -v # buildkit
# Wed, 05 Aug 2026 18:21:52 GMT
WORKDIR /usr/share/kibana
# Wed, 05 Aug 2026 18:21:52 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 05 Aug 2026 18:21:52 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 05 Aug 2026 18:21:52 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:21:52 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 05 Aug 2026 18:21:52 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 18:21:53 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 05 Aug 2026 18:21:54 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 05 Aug 2026 18:21:54 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 05 Aug 2026 18:21:54 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 05 Aug 2026 18:21:54 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 05 Aug 2026 18:21:54 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 05 Aug 2026 18:21:54 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 05 Aug 2026 18:21:54 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 05 Aug 2026 18:21:54 GMT
USER 1000
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f64222a98aa7921f3255513508b5b0eba62f652c62cba18639ba1a874a8a55`  
		Last Modified: Wed, 05 Aug 2026 18:23:00 GMT  
		Size: 19.3 MB (19280521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a77b971886f37d66c1034fbdd11367362600e503685a782ca46d39e6807068`  
		Last Modified: Wed, 05 Aug 2026 18:23:07 GMT  
		Size: 402.3 MB (402277962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3895006a68db810c2ceca064211550e65eb38f0a9330cff56a32c707053b662`  
		Last Modified: Wed, 05 Aug 2026 18:22:59 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537ec0754b35c7d8f9ae3aa48b45f003b0c4669219e1ffcdbde5b5d11af0f5ae`  
		Last Modified: Wed, 05 Aug 2026 18:23:00 GMT  
		Size: 16.5 MB (16460479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab07d7ee50e994d46f6e5b1a36e6e532453b9f3abc0b1936e39fc50018641b39`  
		Last Modified: Wed, 05 Aug 2026 18:23:00 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19b8d2cf000cdf0609aa72a88b336727dc052d96827c1615cf908fb933289b0`  
		Last Modified: Wed, 05 Aug 2026 18:23:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:447965d04610b6e0890da055aa065032c75c4be9a12d35f2c40cecc5400f67ad`  
		Last Modified: Wed, 05 Aug 2026 18:23:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b686b75cc923c5cbc0beb9d07bcea5878ef83da7c6bbe9fd3e1e81e48af3191`  
		Last Modified: Wed, 05 Aug 2026 18:23:01 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8512e1667478f7f6aa76bc68c840554d303cbc77126470902fbfa650a4d1302`  
		Last Modified: Wed, 05 Aug 2026 18:23:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508f1830749fec024c70db7fe590a4e6994835c8aaee659e13b33a087c6cbe70`  
		Last Modified: Wed, 05 Aug 2026 18:23:03 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57bd72c19b1da1df0958fefe084f7356d2fa965ef31a83970d4d802bbe8d9ec`  
		Last Modified: Wed, 05 Aug 2026 18:23:03 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9139926ad50d1259de69a952c19cfe2c99599910309979501fd759c6c366b373`  
		Last Modified: Wed, 05 Aug 2026 18:23:04 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:6ccab9484ea72ae141563b9f935e0411fa5994f254487570413c1f5e0fe5bdaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622c9324171d666f21dbc52d671ec34d33e9db333aaf277e3cd0cc5dbc70d331`

```dockerfile
```

-	Layers:
	-	`sha256:cbf00e3fd7027c14f21bd8ae38f65d02180583dad4001bea4d02ba5fcc0429c3`  
		Last Modified: Wed, 05 Aug 2026 18:22:59 GMT  
		Size: 5.8 MB (5763384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b289592d1cfac779ada3643410fe1d2a210a8be181e14465b5422fd2d3386f41`  
		Last Modified: Wed, 05 Aug 2026 18:22:59 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:beb81c1eecde4bb4080ecaedc7373d70921bac3c0d7d6077afbfd8ce05254561
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:2fee51ac3118c5964be24c649e071fa03cac4bad3ba0543d344de1ddad77dc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.1 MB (532058833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8772455e586349b7aeb478618106c46f02c7d0b2452a0b1c67cc63364f9bf8ce`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:51:42 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 11 Aug 2026 17:51:42 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 11 Aug 2026 18:00:40 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 11 Aug 2026 18:00:41 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 11 Aug 2026 18:00:41 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 11 Aug 2026 18:00:41 GMT
RUN fc-cache -v # buildkit
# Tue, 11 Aug 2026 18:00:41 GMT
WORKDIR /usr/share/kibana
# Tue, 11 Aug 2026 18:00:41 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 11 Aug 2026 18:00:41 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 11 Aug 2026 18:00:41 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 18:00:41 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 11 Aug 2026 18:00:41 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 18:00:42 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 11 Aug 2026 18:00:43 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 11 Aug 2026 18:00:43 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 11 Aug 2026 18:00:43 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Tue, 11 Aug 2026 18:00:43 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 11 Aug 2026 18:00:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 11 Aug 2026 18:00:43 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 11 Aug 2026 18:00:43 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 11 Aug 2026 18:00:43 GMT
USER 1000
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27dfbad06ef7da2ff96b43ee7432afb8a17cccfc9483aa9bf2f1f374d5de045`  
		Last Modified: Tue, 11 Aug 2026 18:01:55 GMT  
		Size: 19.3 MB (19329728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08075c5918b6a49b04f5168526087e0b5147c699c227defa72c9c73923299cc3`  
		Last Modified: Tue, 11 Aug 2026 18:02:03 GMT  
		Size: 455.5 MB (455461942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc755162cacbb6b4568b6d6ce51dccb506787efed7f397e3cc910419cbc4274b`  
		Last Modified: Tue, 11 Aug 2026 18:01:54 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad873b2f014553263de1d756a29623bd26a819ed6640eaf0560cd06ead53b6c`  
		Last Modified: Tue, 11 Aug 2026 18:01:55 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59698664c6bca1b1518937a83d72451c4edee02c5573246927287a16b6f581a7`  
		Last Modified: Tue, 11 Aug 2026 18:01:56 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ea9f0e7fdae0064843dabd24f12320a92deb5f769ad49fbf2c7c6982ee3af2`  
		Last Modified: Tue, 11 Aug 2026 18:01:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c4573c1ff5f7bc94022587cc54702df99908a395977d1c6e64512c0360d282`  
		Last Modified: Tue, 11 Aug 2026 18:01:57 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46cecf7c5bee8d13fbd740db275a2268e6d4584985d43e60430bf8b15e76234`  
		Last Modified: Tue, 11 Aug 2026 18:01:57 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebf8dc03e22591a21abc952247617cd20e09bb2b23873cb40edc926c924057d`  
		Last Modified: Tue, 11 Aug 2026 18:01:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e7be285c56ecb390f7fb2325473bade00e04d82d778be0aab3dd3ac3f8d80c`  
		Last Modified: Tue, 11 Aug 2026 18:01:58 GMT  
		Size: 74.5 KB (74545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a865f51e82df8dc53766d1c5984b4a1e622def311db0cb286a2fb8b9775cc93e`  
		Last Modified: Tue, 11 Aug 2026 18:01:58 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ddcdc7d18278f6002732f50e28178635d6171f3882b814dd6b1b8c8e3ba6a3a`  
		Last Modified: Tue, 11 Aug 2026 18:02:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:412fad948516993b59c5c9bb4433aa134a6fa502fcab3b99fee52c10da72b34d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50171221eac1d78a94e093302908647b61286116fc794833af5fac769da9445`

```dockerfile
```

-	Layers:
	-	`sha256:2312c418d72e00013e0d0817c80111612817ec55ae266fe0875b352dafb52f05`  
		Last Modified: Tue, 11 Aug 2026 18:01:55 GMT  
		Size: 5.8 MB (5826263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf15e97c31a90a8aefbc4e50dd3e1771dcd5a25ace8398a0bfa2efe62f365b51`  
		Last Modified: Tue, 11 Aug 2026 18:01:54 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:fef556bafac5e5da88a6b190b1c81d465ec0e8868070321d8d7615a3186e4304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.0 MB (543038113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4c9665b808432806fd8b70077648f62230cea6a321432b029273095848ddb1`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:15:17 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 05 Aug 2026 18:15:17 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:22:46 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 05 Aug 2026 18:22:46 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 05 Aug 2026 18:22:47 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 05 Aug 2026 18:22:47 GMT
RUN fc-cache -v # buildkit
# Wed, 05 Aug 2026 18:22:47 GMT
WORKDIR /usr/share/kibana
# Wed, 05 Aug 2026 18:22:47 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 05 Aug 2026 18:22:47 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 05 Aug 2026 18:22:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:22:47 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 05 Aug 2026 18:22:47 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 18:22:48 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 05 Aug 2026 18:22:49 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 05 Aug 2026 18:22:49 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 05 Aug 2026 18:22:49 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 05 Aug 2026 18:22:49 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 05 Aug 2026 18:22:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 05 Aug 2026 18:22:49 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 05 Aug 2026 18:22:49 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 05 Aug 2026 18:22:49 GMT
USER 1000
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7e425bdaa83ec4b4a8ed1a019902347f25b305541640944fe3c9b6efb3068e`  
		Last Modified: Wed, 05 Aug 2026 18:24:09 GMT  
		Size: 19.3 MB (19280508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fefcd3a2ff0fd240ab6a7cdb1837b9073518262cd55183dd5f600fe9c633bd3`  
		Last Modified: Wed, 05 Aug 2026 18:24:17 GMT  
		Size: 468.4 MB (468391427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87455408619315704d0320cac81845fd01ce48451801f9ff7f9b3cfb05d4032c`  
		Last Modified: Wed, 05 Aug 2026 18:24:07 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c8874b890ecf71743534b8835cd4343902afacd3ae850cf5523391cd52c551`  
		Last Modified: Wed, 05 Aug 2026 18:24:09 GMT  
		Size: 16.5 MB (16460476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5e6af6b796e1145cc278e9d9863402c967792b2f955d54e0549e5ecee7fbfc`  
		Last Modified: Wed, 05 Aug 2026 18:24:09 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc3479b0cdf80d32a641192d9617ed62171946f971dc915d56c767c570af8f6`  
		Last Modified: Wed, 05 Aug 2026 18:24:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b77a3abc833c405a93f16a386e57e768af57ec8e6c8c2fbce1d36e5c7a74dd9`  
		Last Modified: Wed, 05 Aug 2026 18:24:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9403d032f2485f004ee0761862219ed04d027179292d9094eed3369d16172196`  
		Last Modified: Wed, 05 Aug 2026 18:24:10 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede2d7772ba6a494ecec30eeedf6e3e0d4c23c3fdb95c58e3c8961bc0052814c`  
		Last Modified: Wed, 05 Aug 2026 18:24:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e49eef6c6c585e70f640ccf02c5f633f1ed1faefa36cde2397636b5e4ad60a`  
		Last Modified: Wed, 05 Aug 2026 18:24:11 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79878427c37bfe2104390f9b9f22c23c358a8cbced0c6c332983a6982e2d9c4f`  
		Last Modified: Wed, 05 Aug 2026 18:24:12 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578e37db72b1e87b3c154d04dd56777221bd7df5fa9d0e0041c37bb60a24e0e8`  
		Last Modified: Wed, 05 Aug 2026 18:24:13 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:f459ad7729a9a7371e41e85447aa413c82aec51e65707ad546ce1968684fe927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aceff5c1fe788b64e0960657994398815c1510c82eb72b806e6abc56a66a4f2a`

```dockerfile
```

-	Layers:
	-	`sha256:0c957caf6b79de21b4d16998c883a1086c8daab18fd54b45703571ecb7077f5d`  
		Last Modified: Wed, 05 Aug 2026 18:24:08 GMT  
		Size: 5.8 MB (5823147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6eb3ccc22959b2bd198bd507b2d170d53cc0934ba8cb7284bd257ef835e1691c`  
		Last Modified: Wed, 05 Aug 2026 18:24:07 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
