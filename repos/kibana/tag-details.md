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
$ docker pull kibana@sha256:05bbbb7257679924dc6712941d74f57b2bf9ddb91cbc3d0e2e26079553815316
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:cd456dcd88e669559b3311eb568ae7e63ec0a5dfa88c803603be2e07c4cad4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (465990625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e1796eaca5b7e4783be0f3920fc63c2b5303a61f7d21da8e2a8bca9c1e5053`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:16:26 GMT
ENV container oci
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:ee5097758909d32d2eabf40e7c041e9a840048535966e0c036a09335f4fb4e82 in /      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:16:27 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:14:53Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:14:53Z" "architecture"="x86_64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:14:53Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:04:48 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 21:04:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:13:13 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 21:13:13 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 21:13:13 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 21:13:13 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 21:13:13 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 21:13:14 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 21:13:14 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 21:13:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:13:14 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 21:13:14 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:13:14 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 21:13:15 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 21:13:15 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 21:13:15 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Tue, 04 Aug 2026 21:13:15 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 04 Aug 2026 21:13:15 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 04 Aug 2026 21:13:15 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 21:13:15 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 21:13:15 GMT
USER 1000
```

-	Layers:
	-	`sha256:2ee0d90420c46055e8fc6fd236406f701dc6690c8f7d03e99f89a7fdf5199a81`  
		Last Modified: Mon, 03 Aug 2026 18:10:44 GMT  
		Size: 40.7 MB (40665538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2cf204134e6603562dd1064acebd0ffa7c4249760d8941414fae890b462aec`  
		Last Modified: Tue, 04 Aug 2026 21:14:18 GMT  
		Size: 19.3 MB (19330259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7002cf7582d185a50c5e3326d41d0f797c1c82b1e7de5bc675377b8027ddfda1`  
		Last Modified: Tue, 04 Aug 2026 21:14:25 GMT  
		Size: 389.4 MB (389436419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b2daee76aef4ce7817848559b84c2e4db3484a1949c0a5213278996f0bc6d9`  
		Last Modified: Tue, 04 Aug 2026 21:14:17 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42b195fa56fa168efc0c7739c9d16bc0e2aa195d6f80cfb7fa6bbad54bc2caf`  
		Last Modified: Tue, 04 Aug 2026 21:14:18 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2837a06fd99ec6d8ea8178a58e24f6a1e13e4d73fe40afebc556d6ccc6b4efd5`  
		Last Modified: Tue, 04 Aug 2026 21:14:18 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a94743e3ee9cf3a1710cf7095bc2bff2f884c12818cf8969a0e878d142eb93`  
		Last Modified: Tue, 04 Aug 2026 21:14:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3972a8477a23b1db663241cfaace3935e1bce75e731a810563ab88ae18ca57`  
		Last Modified: Tue, 04 Aug 2026 21:14:20 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a63a2ebfaf88e04f022ac93cf320d7c036967086792ebda36f21168243b9d95`  
		Last Modified: Tue, 04 Aug 2026 21:14:20 GMT  
		Size: 4.9 KB (4923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c304c6c9b98687e9bbc0f47486f2d4792914fa7953025ecefba1aac525008a2`  
		Last Modified: Tue, 04 Aug 2026 21:14:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b6b14e7e3c4214ce46ffb18354677f4bd66dff1e2dd376d1986c3f2db3b6d4`  
		Last Modified: Tue, 04 Aug 2026 21:14:21 GMT  
		Size: 74.5 KB (74544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f654114246aecd70d0b7d1f32b3ad293f366a0833e217dffdd2a823dbb09e19b`  
		Last Modified: Tue, 04 Aug 2026 21:14:21 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8af7b7a8ec842edd5069c391c0a7bd5f049138910e0e1fdc8e5728399d7a74`  
		Last Modified: Tue, 04 Aug 2026 21:14:22 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:4e8d501ea0fb4fd54b5bec463c8ab6a12470887b18d4d22eeb588452d6ac0d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d78f0f1afc880177ca65b1d2d3c8232ec5c69f18c27dfb785118a1d272af795`

```dockerfile
```

-	Layers:
	-	`sha256:7464fa814c4af42cd779ae0a9bfc310af228df3ae167177932daf22e14304140`  
		Last Modified: Tue, 04 Aug 2026 21:14:17 GMT  
		Size: 5.8 MB (5766490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb7ec06d5fbd2b6993002d436adc1d180cff87cff648e27abe70eafc58419c3b`  
		Last Modified: Tue, 04 Aug 2026 21:14:17 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:70d01b01a11c812b672078d7f37972b5d038f4d5c3efa473d4162852564a557a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.9 MB (476910055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a4ee36641bac7704b77ebf2084592346a9c3656ffc489564ae2900e74433c9`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:52 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:a5c32caa9e90bbd6deec29de1e7bd55a9a024d72d910be5ebab34568acf6ce4b in /      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:53 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:17:29Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:17:29Z" "architecture"="aarch64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:17:29Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:05:30 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 21:05:30 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:12:16 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 21:12:17 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 21:12:17 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 21:12:17 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 21:12:17 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 21:12:17 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 21:12:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 21:12:17 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:12:17 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 21:12:17 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:12:18 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 21:12:19 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 21:12:19 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 21:12:19 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Tue, 04 Aug 2026 21:12:19 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 04 Aug 2026 21:12:19 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 04 Aug 2026 21:12:19 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 21:12:19 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 21:12:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:69052a49c9c285fb83e9496b9adcbb8c227ccc15bbdcadfd23725434e572109f`  
		Last Modified: Mon, 03 Aug 2026 18:10:51 GMT  
		Size: 38.8 MB (38795066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5536b2e8d1601dc28f373f16dadb6f1c627e5bbd135315b512dc4b15acb13b1`  
		Last Modified: Tue, 04 Aug 2026 21:13:25 GMT  
		Size: 19.3 MB (19283223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0ad69c3a226cab130abada4e96e9219a92228341765b9171dfae7051fb7d31`  
		Last Modified: Tue, 04 Aug 2026 21:13:32 GMT  
		Size: 402.3 MB (402274865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94617954f0588f1b183cd0f630dc7f859ed7dd714971a4799777a465219da801`  
		Last Modified: Tue, 04 Aug 2026 21:13:24 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a83bf092ac26bb892ff97b0ca9e71be91b2bc3a08f93642875f8881d94a4a1`  
		Last Modified: Tue, 04 Aug 2026 21:13:25 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265be847d8cf0478f97a377f513250d6771685ea36f606c212a58ff3334bce6c`  
		Last Modified: Tue, 04 Aug 2026 21:13:25 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb9f3fd2ce44d5aac592d4831db367c886e60a2d93f6ccb6931347c32ad6b93`  
		Last Modified: Tue, 04 Aug 2026 21:13:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426eb196ffd503fd0abfb164cb0c388871de2ec4f31833964f84bc31fd6fa104`  
		Last Modified: Tue, 04 Aug 2026 21:13:27 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35399084ae99104612a30e2c13f143b7fae5426c2c6ce9233210132006206a27`  
		Last Modified: Tue, 04 Aug 2026 21:13:27 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b82311128ee93dbfcac9e2ecf3ed34f94c3e89700f3f7f42ef950acd19ddb3e`  
		Last Modified: Tue, 04 Aug 2026 21:13:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff6436343136794dace8dc2dc24395911fba8738d4b254627b53359b12a27f5d`  
		Last Modified: Tue, 04 Aug 2026 21:13:28 GMT  
		Size: 73.5 KB (73451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94a030f883e3358aefc747fa1ab7fab8d942444570c69720b46f3a0f8028aac`  
		Last Modified: Tue, 04 Aug 2026 21:13:28 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695df2fff1981c914da5164a18cbe87f761ca5a3b768add3474cd6c24c8bd939`  
		Last Modified: Tue, 04 Aug 2026 21:13:30 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:7bd33654a4e1d68294f2384cb556312c7cc3af99ab1257907d29afb1a18fcbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9396e14dd9dff297b2a63ec961aa54f6d91ce43e8caca2df4505b228afd11280`

```dockerfile
```

-	Layers:
	-	`sha256:90260892742f0fae2d63001f34bd1894c78df34778097e89e4a083279020a6fb`  
		Last Modified: Tue, 04 Aug 2026 21:13:25 GMT  
		Size: 5.8 MB (5763380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b60ab42e61afe8b33ed44e16f3931b0edb091d55777f47c523a15b91ac243390`  
		Last Modified: Tue, 04 Aug 2026 21:13:24 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:606b92a080db9fbf41920a47c19aee94cacedd0d2d598fb76cf3b18b679a6479
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:9ecaee9cb47dc081c1072490c79cc05df3f30aebab6682114648c7be3d97d3df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.0 MB (532016418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8a4aad4f9f0687d51b2446c969a376436b999477ac1609a0a63b9dc355d2fb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:16:26 GMT
ENV container oci
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:ee5097758909d32d2eabf40e7c041e9a840048535966e0c036a09335f4fb4e82 in /      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:16:27 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:14:53Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:14:53Z" "architecture"="x86_64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:14:53Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:04:57 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 21:04:57 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:14:14 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 21:14:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 21:14:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 21:14:14 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 21:14:14 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 21:14:15 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 21:14:15 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 21:14:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:14:15 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 21:14:15 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:14:15 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 21:14:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 21:14:16 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 21:14:16 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Tue, 04 Aug 2026 21:14:16 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 04 Aug 2026 21:14:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 04 Aug 2026 21:14:17 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 21:14:17 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 21:14:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:2ee0d90420c46055e8fc6fd236406f701dc6690c8f7d03e99f89a7fdf5199a81`  
		Last Modified: Mon, 03 Aug 2026 18:10:44 GMT  
		Size: 40.7 MB (40665538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69faf425e4dbe88723bda31ff9c77eb07a3538f90bc9b6b1539e82a62844ae8`  
		Last Modified: Tue, 04 Aug 2026 21:15:28 GMT  
		Size: 19.3 MB (19330218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce755d7631c07b0d3d50984d51892f5fe60ca48f0eed1320a7fb76bc779ab87`  
		Last Modified: Tue, 04 Aug 2026 21:15:35 GMT  
		Size: 455.5 MB (455462232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32b48c9c7d0601c8ddee2fa782cb59479981fc6b8dee943d051ac915cc46360`  
		Last Modified: Tue, 04 Aug 2026 21:15:27 GMT  
		Size: 9.5 KB (9527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5522f44af544ec055b8bcefb9dbcc663f8943a6c4acab69b0d71f9d4eace1356`  
		Last Modified: Tue, 04 Aug 2026 21:15:28 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4559bb840d0bcc9179d104397e1d067fff969b635c5d1d652d7f8e7da91c84d2`  
		Last Modified: Tue, 04 Aug 2026 21:15:28 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0277bd98c9c601afbd7942e331a20c456b4c5b7da5c2568345d290eb774a2f78`  
		Last Modified: Tue, 04 Aug 2026 21:15:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e21e07a932f24832800d940434fecb5e30ddc8497b1ae970524d941c0f09d0`  
		Last Modified: Tue, 04 Aug 2026 21:15:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4efffb4aba971a4b6e3002fa7b5c01976eae5d663fe73ae90a0d2149552ba374`  
		Last Modified: Tue, 04 Aug 2026 21:15:30 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c23a90dfa62b8e8d7394f1bcd7f4e9c0aa3319755274530dee559c1ba3c8a68`  
		Last Modified: Tue, 04 Aug 2026 21:15:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe45924f01a41f3847418c26d143781b8ea1522c17510eafcc84ba991c56c16`  
		Last Modified: Tue, 04 Aug 2026 21:15:31 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a43ff647fbc462f3847a9cbc0ee51720412682822ec83a1302ae5da17bb083`  
		Last Modified: Tue, 04 Aug 2026 21:15:31 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3886bf15a9ce88f509cb1ef68d275b8699b754033b7f0652d21ffd50a60c62`  
		Last Modified: Tue, 04 Aug 2026 21:15:32 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:b10fb107fb5f6d1e5807ea111f3c412248058b54b04b2499780f6b698c74502c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304e4dd70b532a29bd23a2f58969dae03e1d9f91c97c115cd9543064d893b169`

```dockerfile
```

-	Layers:
	-	`sha256:38b717bdbf3f8ffd47ed0c460aaab7925bcb22a6116715cbb4c77f7ad20fe51c`  
		Last Modified: Tue, 04 Aug 2026 21:15:27 GMT  
		Size: 5.8 MB (5826253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2271cbe41cbf4dd8c445e5925d0140256d1fd65c8917e60eec3bf6cbca471382`  
		Last Modified: Tue, 04 Aug 2026 21:15:27 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:6ef3dff42c1fd2a1104888bc6f49233bbb6ca7b3cd7ca9491e4220e958e5418c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.0 MB (543017333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906b67d9e8dceae70466b2f97fa14476eead166e2c05afc1cebdf6f079166cfc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:52 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:a5c32caa9e90bbd6deec29de1e7bd55a9a024d72d910be5ebab34568acf6ce4b in /      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:53 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:17:29Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:17:29Z" "architecture"="aarch64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:17:29Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:05:38 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 21:05:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:12:58 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 21:12:58 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 21:12:58 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 21:12:59 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 21:12:59 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 21:12:59 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 21:12:59 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 21:12:59 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:12:59 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 21:12:59 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 21:13:00 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 21:13:01 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 21:13:01 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 21:13:01 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Tue, 04 Aug 2026 21:13:01 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 04 Aug 2026 21:13:01 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 04 Aug 2026 21:13:01 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 21:13:01 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 21:13:01 GMT
USER 1000
```

-	Layers:
	-	`sha256:69052a49c9c285fb83e9496b9adcbb8c227ccc15bbdcadfd23725434e572109f`  
		Last Modified: Mon, 03 Aug 2026 18:10:51 GMT  
		Size: 38.8 MB (38795066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ac385c6921ffbd0db780e3e3fc32ed643c266236452a08d74d4c5a48bca9cf`  
		Last Modified: Tue, 04 Aug 2026 21:14:20 GMT  
		Size: 19.3 MB (19283278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b3f62fadd389171932fbdbcae9b15a92bad30e96293e86bc8a7284e826fe9c`  
		Last Modified: Tue, 04 Aug 2026 21:14:28 GMT  
		Size: 468.4 MB (468382090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5008a5a8f024ea813c986af23e77247d81a21bf793e462a1310b23c1c401e756`  
		Last Modified: Tue, 04 Aug 2026 21:14:19 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f32e5c592be042ddcbea96060cda30107f42bcc0efce68bd9b27f05934a93d`  
		Last Modified: Tue, 04 Aug 2026 21:14:20 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdb810112d0ac530cf5fb2d7162ec97b23fa8acd020c6472186e2764277e73a`  
		Last Modified: Tue, 04 Aug 2026 21:14:21 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6cba086a87f3e50fca4a52965dd96542b815a201b961a9894596d46e7eb4e0`  
		Last Modified: Tue, 04 Aug 2026 21:14:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38be5e0b6b2dd8b9db5554199d266c457902850e45c071ee024c278fc043fb0`  
		Last Modified: Tue, 04 Aug 2026 21:14:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5529ac3658b090b33f25a1e1d914a32498e5c1505cf937c1218a8a9f02c4902c`  
		Last Modified: Tue, 04 Aug 2026 21:14:22 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3216c7376d72cd42c4cd9814cc11a23512c062858067e1bf7b9bd75966f62e9`  
		Last Modified: Tue, 04 Aug 2026 21:14:23 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b320073e583044c760f2cf5793a140449a676eced2455829e918c3a5eb64f0`  
		Last Modified: Tue, 04 Aug 2026 21:14:23 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af3f6f5a50b11c6131b43e6c0214557319d53b1d00cd3b49efc93e1058e4be1`  
		Last Modified: Tue, 04 Aug 2026 21:14:24 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2405e558c6630167d512fc12af062e5eb858be632fecf162b967204eff7974c3`  
		Last Modified: Tue, 04 Aug 2026 21:14:24 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:13fe3b6cfcdbd6fbea7eafd56c0bab531d70bf8246b07f48f1692ceeea6c80d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151ca95b5205c1769a7b718863b5a5a0f43057bb6770a9e3e1a140fc4e3ab34b`

```dockerfile
```

-	Layers:
	-	`sha256:d627d0eb625325031f1f8428a89cdb202c7f110f812dd1ac3822f49efd0f0ee2`  
		Last Modified: Tue, 04 Aug 2026 21:14:20 GMT  
		Size: 5.8 MB (5823143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9f5e3a5befcf5c6f7193a4af8b2e7ed235ba0cdb259493879c81a7f45f2277e`  
		Last Modified: Tue, 04 Aug 2026 21:14:19 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
